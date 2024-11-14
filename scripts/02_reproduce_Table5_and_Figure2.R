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

## compute the steady-state for each of the 5,000 models resulting from the sampled parameter space ----
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
})
sensitivity_outputs <- parLapply(cl = cl, 
                    X = 1:n_samples,
                    f = function (i) {
                      if (i %% 100 == 0) {
                        print(paste("Nous en sommes à l'iteration", i))
                      }
                      sensitivity_model <- suppressWarnings(loadModel("./models/team_2016_final_model_lo2016.cps"))
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
                      # export quantities of interest, T1,T2 and the respective sb s10 and s12 variations
                      SS_concentrations <- setNames(sensitivity_model_steady_state$concentration,
                                                    sensitivity_model_steady_state$name) |> 
                        as.list() |> as.data.frame() |> 
                        dplyr::bind_cols(bootstrap_parameters[i, c("sb", "s10", "s12"), drop=FALSE] |> 
                                           as.data.frame())
                      return(SS_concentrations)
                    }
                    , chunk.size = 50)
# save output
saveRDS(sensitivity_outputs, "./tables/sensitivity_outputs.rds")
print("Sensitivity analysis is ended.")
# close cluster
stopCluster(cl)

# reshape and rank-transform sensitivity outputs

ranked_sensitivity <- sensitivity_outputs |> 
  dplyr::bind_rows() |> 
  dplyr::mutate(across(everything(), rank)) 

sensitivity_outputs_reshaped <- ranked_sensitivity |> 
  tidyr::pivot_longer(cols = c("sb", "s10", "s12"), names_to = "parameters", values_to = "x") |> 
  tidyr::pivot_longer(cols = c("T1", "T2"), names_to = "species", values_to = "y")

library(ppcor)
# Calculate PRCC using partial correlations on ranked data
prcc_sensitivity <- pcor(ranked_sensitivity)$estimate

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

sensitivity_outputs_formatted <- sensitivity_outputs_reshaped |> 
  dplyr::mutate(parameters = factor(parameters, 
                                    levels = c("sb", "s10", "s12"),
                                    labels = c("sigma[b]", "sigma[10]", "sigma[12]")) |> 
                  as.character(),
                species = factor(species, 
                                 levels = c("T1", "T2"),
                                 labels = c("T[1]","T[2]")) |>
                  as.character())

prcc_sensitivity_annot <- data.frame(x=n_samples/2, y=Inf, 
                                     lab=paste("PRCC =", c(prcc_sensitivity["T1", "s10"],
                                                           prcc_sensitivity["T1", "s12"],
                                                           prcc_sensitivity["T1", "sb"],
                                                           prcc_sensitivity["T2", "s10"],
                                                           prcc_sensitivity["T2", "s12"],
                                                           prcc_sensitivity["T2", "sb"]) |> 
                                                 round(digits = 4)), 
                                     parameters=rep(c("sigma[10]", "sigma[12]", "sigma[b]"), 2),
                                     species= c(rep("T[1]", 3), rep("T[2]", 3)))




### Actual plot of the PRCC values along the scatter ranks ----

SS_plots <- ggplot(sensitivity_outputs_formatted, aes(y = y, x=x)) +
  geom_point(size = 0.1, col = "blue", shape = 20) +
  facet_grid(species ~ parameters, 
             labeller = labeller(.rows = label_parsed, .cols = label_parsed)) +
  geom_label(aes(x, y, label=lab),
            data=prcc_sensitivity_annot, vjust=0.8, size = 3) +
  xlab("Cell species") + ylab("Sensitive parameters") +
  theme_minimal() +
  theme(panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        strip.text.y = element_text(angle = 0)) +
  

ggsave(filename = "./figures/Fig2_PRCC.pdf", 
       plot = SS_plots, dpi = 600, width = 20, height = 10,
       units = "cm")







