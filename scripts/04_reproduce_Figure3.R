library(CoRC)
library(ggplot2)
library(dplyr)

## Prepare parameter variations for each of the four patient subtypes ----
healthy_model <- suppressWarnings(loadModel("./models/team_2016_final_model_lo2016.cps"))

# retrieve parameter mapping
parameters_per_clusters <- getParameters(c("(Prod of Ig from T1).k1",
                          "(Prod of Ia from T1).k1",
                          "(Prod of Ib from Tr).k1",
                          "(Prod of I10 from Tr).v10r",
                          "(Induction of T1 from M).s12",
                          "(Induction of T2).s4",
                          "(Induction of T17).s21",
                          "(Induction of T17).s6",
                          "(Induction of Tr).sb",
                          "(Induction of Tr).s10"), model = healthy_model)

# join parameter variations specific to each disease subtype ...
patient_group <- c("Type1", "Type2", "Type3", "Type4")
parameters_per_clusters <- parameters_per_clusters |> 
  dplyr::inner_join(readr::read_csv("data/IBD subgroups.csv", show_col_types = FALSE), by = "key") |> 
  rename(healthy = value) |> 
  dplyr::select(-mapping) |> 
  # ... and convert relative ratios to absolute, considering the healthy standard reference
  dplyr::mutate(across(all_of(patient_group), \(x) healthy *  (1 + x/100)))

# run healthy steady state
healthy_steaty_state <- runSteadyState(
  calculate_jacobian = FALSE,
  model = healthy_model)$species |> 
  dplyr::select(name, concentrationH = concentration) |> 
  filter (name %in% c("I6", "I10", "Ia", "T1", "T2","T17", "Tr", "Ig", "Ib"))


# Infer steady states for each patient subgroup, with and without anti-TNF-alpha treatment ----

steady_states_per_cluster <- purrr::map(patient_group, function(cluster) {
  disease_model_without_treatment <- healthy_model |> saveModelToString() |>  loadModelFromString() 
  setParameters(model = disease_model_without_treatment, 
                key = parameters_per_clusters$key, 
                value = parameters_per_clusters$cluster)
  # run the steady-state without treatment, for each patient subgroup
  without_treatment_steady_state <- runSteadyState(
    calculate_jacobian = FALSE,
    model = disease_model_without_treatment)$species |> 
    dplyr::select(name, concentration) |> 
    inner_join(healthy_steaty_state, by = "name") |> 
    mutate (concentration = 100* (concentration - concentrationH) / concentrationH) |> 
    dplyr::select(-concentrationH) |> 
    mutate(cluster = cluster, category = "untreated") 
  
  
  # reproduce the whole process, this time mimicking anti-TNF alpha treatment
  disease_model_with_treatment <- suppressWarnings(disease_model_without_treatment |> 
                                                     saveModelToString() |>  
                                                     loadModelFromString())
  # to that end, coerce TNF-alpha to remain fixed and null throughout the whole process
  setSpecies(
    key = "Ia{compartment}",
    initial_concentration = 0,
    type ="fixed",
    model = disease_model_with_treatment
  )
  with_treatment_steady_state <- runSteadyState(
    calculate_jacobian = FALSE,
    model = disease_model_with_treatment)$species |> 
    dplyr::select(name, concentration) |> 
    inner_join(healthy_steaty_state, by = "name") |> 
    mutate (concentration = 100* (concentration - concentrationH) / concentrationH) |> 
    dplyr::select(-concentrationH) |> 
    tibble::add_row(name = "Ia", concentration = 0) |> 
    mutate(cluster = cluster, category = "treated")
    
  return (rbind(without_treatment_steady_state, with_treatment_steady_state))
  
}) |> 
  purrr::list_rbind()

# Reproduce boxplots of Figure 3, pre and post-treatment ----
library(ggplot2)
library(latex2exp)
library(cowplot)

# format dataset for plotting
steady_states_per_cluster_plot <- steady_states_per_cluster |> 
  mutate (name = factor (name, 
                         levels = c("I6", "I10", "Ia",  "T1", "T2",
                                    "T17", "Tr", "Ig", "Ib"),
                         labels = c("IL-6", "IL-10", "TNF-alpha", "Th1", "Th2", 
                                    "Th17", "Treg", "IFN-gamma", "TFG-beta"), 
                         ordered = TRUE),
          category  = factor(category, 
                           levels = c("untreated", "treated"), ordered = TRUE))

cluster_labels <- c("Type 1: Th1\\uparrow Th2\\downarrow",
                    "Type 2: Th1\\downarrow Th2\\uparrow", 
                    "Type 3: Th1\\uparrow Th2\\uparrow",
                    "Type 4: Th1\\downarrow Th2\\downarrow") 
names(cluster_labels) <- c("Type1", "Type2", "Type3", "Type4")


### Retrieve legend ----
global_plot <- ggplot(data = steady_states_per_cluster_plot, 
                      mapping = aes(x = name, y = concentration, fill = category)) +
  geom_col(position = "dodge") +
  scale_fill_manual(name ="Treatment", values=c("blue", "red")) + 
  guides(color = guide_legend(nrow = 1)) +
  theme(legend.position = "bottom") 

### Generate bar plot for each disease subtype ----
list_plots <- purrr::imap(cluster_labels, ~ ggplot(data = steady_states_per_cluster_plot |> filter(cluster==.y), 
                                                   mapping = aes(x = name, y = concentration, fill = category)) +
                            geom_col(position = "dodge")+
                            labs(x = NULL, y = NULL) +
                            scale_fill_manual(name ="Treatment", values=c("blue", "red")) +
                            theme_minimal() +
                            theme(panel.grid.major = element_blank(),
                                  legend.position = "none", plot.title = element_text(hjust = 0.5)) +
                            ggtitle(TeX(.x)))

### Combine barplots into a 2x2 grid ----
plot_grid_combined <- cowplot::plot_grid(plotlist = list_plots, 
  ncol = 2, align = "hv", axis = "tblr") 

x_label <- ggdraw() + draw_label("Cell Species", x = 0.5, y = 0.5)
y_label <- ggdraw() + draw_label("ODE Parameters", x = 0.5, y = 0.5, angle = 90)

# Add global y label
plot_grid_combined <- cowplot::plot_grid(y_label,
  plot_grid_combined,
  nrow = 1,
  rel_widths = c(0.1, 1)  # Adjust width for the legend
)

# Add legend
# add this code snippet as a temporary solution to issue https://github.com/wilkelab/cowplot/issues/202   
source("scripts/utils.R")  
legend_plot <- get_legend_temp(global_plot)

# Add global x label
plot_grid_combined <- cowplot::plot_grid(plot_grid_combined, 
                   x_label,
                   legend_plot,
                   nrow = 2, ncol =1,
                   rel_heights = c(1, 0.1)  # Adjust width for the legend
)

plot_grid_combined <- cowplot::plot_grid(
  plot_grid_combined,
  legend_plot,
  nrow = 2,
  rel_heights = c(1, 0.1)  # Adjust width for the legend
)

ggsave("results/Fig3_Patient_clusters.pdf", plot = plot_grid_combined,
       width = 13, height = 8, dpi = 600)


