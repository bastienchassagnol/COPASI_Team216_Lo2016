library(CoRC)
library(ggplot2)
library(dplyr)

# Reproduce Table 5: sensitivity analyses ----
## Retrieve parameters we want to evaluate the versatility ----
healthy_model <- loadModel("./models/team_2016_final_model_lo2016.cps")
# S2 to be changed
parameters_healthy <- getParameters(model = healthy_model,
                                  key = c("(Diff of M0 to M1).delta_m_cit",
                                          "(Diff of M1 to M2).sigma",
                                          "(Induction of T1 from M).s12",
                                          "(Proliferation of T1).s2",
                                          "(Induction of T2).s4",
                                          "(Induction of T17).s21",
                                          "(Induction of T17).s6",
                                          "(Induction of Tr).sb",
                                          "(Induction of Tr).s10")) 

## Generate the Latin hypercube sampling ----

#  `lhs` package 
library(lhs)

# Define the number of parameter samples to generate (here 5,000)
n_samples <- 5000

# retrieve the healthy parameters
parameters_sensitivity <- parameters_healthy$value

# Create a matrix to compute the LB and UB, consider a ±20% range
param_ranges <- tibble::tibble(parameters_name = parameters_healthy$key, 
                               LB= parameters_sensitivity *0.8,
                               UB = parameters_sensitivity *1.2)


# Perform Latin Hypercube Sampling, which by default assumes [0,1] random distribution
set.seed(20) # set the seed to ensure reproducibility
bootstrap_parameters <- randomLHS(n_samples, length(parameters_sensitivity))

# Scale the samples from U[0,1] to U[0.8 * mean, mean * 1.2] for each of the parameters
for (i in seq_along(parameters_sensitivity)) {
  # use linear insensitivity property of Uniform distributions
  bootstrap_parameters[,i] <- qunif(bootstrap_parameters[,i], 
                           param_ranges$LB[i],
                           param_ranges$UB[i])
  # equivalent to perform the following operation: col * (ranges[,2] - ranges[,1]) + ranges[,1]
  
}
colnames(bootstrap_parameters) <- parameters_healthy$name

# verify the linear transformation
apply(bootstrap_parameters,2, mean)

# `bootstrap_parameters` now contains the 5000 parameter configurations for the 9 parameters

## Compute the steady-state for each of the 5,000 models resulting from the sampled parameter space ----

### Sequential steady-state computation ----
# sensitivity_outputs <- purrr::map(1:10, function(i) {
#   # load healthy model each time, as memory is donne in place
#   sensitivity_model <- suppressWarnings(loadModel("./models/team_2016_final_model_lo2016.cps"))
#   # modify model in place (no other option)
#   setParameters(model = sensitivity_model, 
#                 key = parameters_healthy$key, 
#                 value = bootstrap_parameters[i,])
#   # run the steady-state operations
#   sensitivity_model_steady_state <- runSteadyState(
#     calculate_jacobian = FALSE,
#     model = sensitivity_model
#   )$species |> 
#     filter(name %in% c("T1","T2"))
#     
#   
#   SS_concentrations <- setNames(sensitivity_model_steady_state$concentration,
#                                 sensitivity_model_steady_state$name) |> 
#     as.list() |> as.data.frame() |> 
#     dplyr::bind_cols(bootstrap_parameters[i, c("sb", "s10", "s12"), drop=FALSE] |> 
#                        as.data.frame())
#   return(SS_concentrations)
# }) |> purrr::list_rbind()

### Parallel steady-state evaluation ----

library(parallel)
cl <- makeCluster(detectCores())
# clusterCall(cl = cl, fun = eval, .prep, env = .GlobalEnv)
# export parameters table into each cluster node
clusterExport(cl, varlist = c("parameters_healthy", "bootstrap_parameters"))
# load required packages in each cluster node (here, we list operations to be done only once)
cluster_environments <- clusterEvalQ(cl, {
  library(CoRC)
  library(dplyr, quietly = TRUE)
  healthy_model <- loadModel("./models/team_2016_final_model_lo2016.cps")
})
sensitivity_outputs <- parLapply(cl = cl, 
                    X = 1:n_samples,
                    f = function (i) {
                      # line required, as CoRC uses copying by reference
                      sensitivity_model <- healthy_model |> saveModelToString() |>  loadModelFromString()
                      # modify model in place (no other option)
                      setParameters(model = sensitivity_model, 
                                    key = parameters_healthy$key, 
                                    value = bootstrap_parameters[i,])
                      # run the steady-state operations
                      sensitivity_model_steady_state <- runSteadyState(
                        calculate_jacobian = FALSE,
                        model = sensitivity_model
                      )$species |> 
                        filter(name %in% c("T1","T2"))
                      # export quantities of interest, T1,T2 and the free variable parameters
                      SS_concentrations <- setNames(sensitivity_model_steady_state$concentration,
                                                    sensitivity_model_steady_state$name) |> 
                        as.list() |> as.data.frame() |> 
                        dplyr::bind_cols(bootstrap_parameters[i, ,drop=FALSE] |> 
                                           as.data.frame())
                      return(SS_concentrations)
                    }
                    , chunk.size = 50)
# save output
readr::write_csv(sensitivity_outputs |> 
                   dplyr::bind_rows(), 
                 "./results/sensitivity_outputs.csv")
# close cluster
stopCluster(cl)

# reshape and rank-transform sensitivity outputs

sensitivity_outputs <- sensitivity_outputs |> 
  dplyr::bind_rows() |> 
  dplyr::mutate(across(everything(), rank)) 

## Compute Table 5 showing PRCC values ----

### Compute partial correlations ----
library(ppcor)
# Calculate PRCC using partial correlations on ranked data
prcc_sensitivity <- pcor(sensitivity_outputs)
prcc_estimate <- prcc_sensitivity$estimate |> 
  tibble::as_tibble(mat, rownames = "species") |> 
  dplyr::select (species, T1, T2) |> 
  filter(!species %in% c("T1", "T2")) |> 
  inner_join(prcc_sensitivity$p.value |> 
               tibble::as_tibble(mat, rownames = "species") |> 
               dplyr::select (species, T1, T2) |> 
               filter(!species %in% c("T1", "T2")), by = "species",
             suffix = c("", ".pval")) |> 
  mutate(T1 = if_else(T1.pval <=0.01, sprintf("%.3f*", T1), sprintf("%.3f", T1)),
         T2 = if_else(T2.pval <=0.01, sprintf("%.3f*", T2), sprintf("%.3f", T2))) |> 
  dplyr::select(-T1.pval, -T2.pval)


### Format PRCC table ----
library(flextable)
prcc_labels <- list(
  species = "",
  T1 = "PRCC for T1", 
  T2 = "PRCC for T2")

prcc_estimate_flextable <- flextable(prcc_estimate) |> 
  add_footer_row(values = "* denotes significant PRCC with p-value below 0.01.", 
                 colwidths = 3) |> 
  compose(j = "species",
          value = as_paragraph(as_equation(c("\\sigma_{M_{\\alpha}}", "\\sigma_{M_{10}}",
                                             "\\sigma_{12}", "\\sigma_{2}", "\\sigma_{4}",
                                             "\\sigma_{21}", "\\sigma_{6}", 
                                             "\\sigma_{\\beta}", "\\sigma_{10}")))) |> 
  set_header_labels(values = prcc_labels) |> 
  align(align = "center", part = "all") |> 
  set_caption("Table 5: PRCC values for key parameters playing on T1 and T2 variations.") 
save_as_html(prcc_estimate_flextable,
  path = "results/Table5.html",
  title = "Table 5: PRCC analysis"
)

## Plot rank-transformed datasets ----

### Adjust dataset to use Latex notations ----
# library(latex2exp) # to use mathematical formulas to annotate plot labels
# sensitivity_outputs_formatted <- sensitivity_outputs_reshaped |> 
#   dplyr::mutate(parameters = factor(parameters, 
#                                     levels = c("sb", "s10", "s12"),
#                                     labels = c("$\\sigma_b$", "$\\sigma_{10}$", "$\\sigma_{12}$")) |> 
#                   as.character() |> 
#                   TeX(output = "character"),
#                 species = factor(species, 
#                                  levels = c("T1", "T2"),
#                                  labels = c("$T_{1}$","$T_{2}$")) |>
#                   as.character() |> 
#                   TeX(output = "character"))

sensitivity_outputs_formatted <- sensitivity_outputs |>
  dplyr::select (c("T1", "T2", "sb", "s10", "s12")) |> 
  tidyr::pivot_longer(cols = c("sb", "s10", "s12"), names_to = "parameters", values_to = "x") |>
  tidyr::pivot_longer(cols = c("T1", "T2"), names_to = "species", values_to = "y") |> 
  dplyr::mutate(parameters = factor(parameters, 
                                    levels = c("sb", "s10", "s12"),
                                    labels = c("sigma[b]", "sigma[10]", "sigma[12]"),
                                    ordered = TRUE),
                species = factor(species, 
                                 levels = c("T1", "T2"),
                                 labels = c("T[1]","T[2]")))

prcc_values <- prcc_sensitivity$estimate
prcc_sensitivity_annot <- data.frame(x=n_samples/2, y=Inf, 
                                     lab=factor(paste("PRCC =", c(prcc_values["T1", "sb"],
                                                           prcc_values["T1", "s10"],
                                                           prcc_values["T1", "s12"],
                                                           prcc_values["T2", "sb"],
                                                           prcc_values["T2", "s10"],
                                                           prcc_values["T2", "s12"]) |> 
                                                 sprintf(fmt = '%.3f')), ordered = TRUE), 
                                     parameters=factor(rep(c("sigma[b]", "sigma[10]", "sigma[12]"), 2), 
                                                       ordered = TRUE),
                                     species= factor(c(rep("T[1]", 3), rep("T[2]", 3)), 
                                                     ordered = TRUE))

### PRCC scatter plot values after rank-transformation ----

SS_plots <- ggplot(sensitivity_outputs_formatted, aes(y = y, x=x)) +
  geom_point(size = 0.1, col = "blue", shape = 20) +
  facet_grid(species ~ parameters, 
             labeller = labeller(.rows = label_parsed, .cols = label_parsed)) +
  geom_label(aes(x, y, label=lab),
            data=prcc_sensitivity_annot, vjust=0.8, size = 3) +
  xlab("Cell Species") + ylab("Free and Variable Parameters") +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        strip.text.y = element_text(angle = 0)) 
  

ggsave(filename = "./results/Fig2_PRCC.pdf", 
       plot = SS_plots, dpi = 600, width = 20, height = 10,
       units = "cm")







