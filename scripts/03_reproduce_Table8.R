library(CoRC)
library(ggplot2)
library(dplyr)
source("scripts/utils.R")

# define experiences (here, steady-case as measured by concentrations for each of the four clusters) ----

# load healthy model for reference ...
healthy_model <- suppressWarnings(loadModel("./models/team_2016_final_model_lo2016.cps"))
# ... starting parameter estimation from healthy steady state rather than randomly, as done in Lo 2016 paper
healthy_steaty_state <- runSteadyState(
  calculate_jacobian = FALSE,
  model = healthy_model)$species |> 
  dplyr::select(name, concentrationH=concentration)

# load experiment data and convert percentages of DGEA into absolute values
cluster_type <- c("Type 1", "Type 2", "Type 3", "Type 4")
data_experiment <- readr::read_csv("data/IBD DGEA.csv", show_col_types = FALSE) |> 
  tidyr::pivot_longer(!cluster, names_to = "name", values_to = "concentration") |> 
  dplyr::left_join(healthy_steaty_state, by = "name") |> 
  mutate(concentration = if_else(!is.na(concentrationH), 
                                 concentrationH * (1 + concentration/100), concentration),
         concentrationH=NULL) |> 
  tidyr::pivot_wider(names_from = name, values_from = concentration) |> 
  split(f = cluster_type) 
# conceive the experimental design ----

## define the free parameters ----
# define larger lower and upper bounds
free_parameters_key <- getParameters(c("(Prod of Ig from T1).k1",
                                       "(Prod of Ia from T1).k1",
                                       "(Prod of Ib from Tr).k1",
                                       "(Prod of I10 from Tr).v10r",
                                       "(Induction of T1 from M).s12",
                                       "(Induction of T2).s4",
                                       "(Induction of T17).s21",
                                       "(Induction of T17).s6",
                                       "(Induction of Tr).sb",
                                       "(Induction of Tr).s10"), model = healthy_model)$key

fit_parameters <- purrr::map(free_parameters_key, function(param) {
  val <- getParameters(param)$value
  defineParameterEstimationParameter(
    ref = parameter(param, "Value"),
    start_value = val, 
    lower_bound = 1e-15,
    upper_bound = 1e4)
})

## define an experiment ----
# unfortunately, we only have the averaged expression, and one point for each cluster
# rather than time series, a steady experience is here considered


fit_experiments <- purrr::map(data_experiment, ~ defineExperiments(experiment_type = "steady_state",
                                                                            data = .x,
                                                                            # ignore refers to quantified gene expression not included in the ODE model
                                                                            type = c("ignore", "dependent", "dependent", "dependent", 
                                                                                     "ignore", "ignore", "ignore", "ignore", "ignore", "ignore"),
                                                                            mapping = c(NA, getSpeciesReferences(key = c("I6", "I10", "Ia", "Ib", "Ig"),
                                                                                                                 model = healthy_model) |> pull(concentration), 
                                                                                        rep(NA, 4)),
                                                                            # report to https://copasi.org/Support/User_Manual/Tasks/Parameter_Estimation/Experimental_Data/ for details 
                                                                            weight_method = "mean_square"
))

## following code to be commented out if we assume interferon beta and gamma have been observed rather than post-hoc estimated
# fit_experiments_complete <- purrr::map(data_experiment, ~ defineExperiments(experiment_type = "steady_state",
#                                                                    data = .x,
#                                                                    # ignore refers to quantified gene expression not included in the ODE model
#                                                                    type = c("ignore", "dependent", "dependent", "dependent", 
#                                                                             "dependent", "dependent", "ignore", "ignore", "ignore", "ignore"),
#                                                                    mapping = c(NA, getSpeciesReferences(key = c("I6", "I10", "Ia", "Ib", "Ig"),
#                                                                                                         model = healthy_model) |> pull(concentration), 
#                                                                                rep(NA, 4)),
#                                                                    # report to https://copasi.org/Support/User_Manual/Tasks/Parameter_Estimation/Experimental_Data/ for details 
#                                                                    weight_method = "mean_square"
# ))
  
  

# run the Parameter Estimation analysis, allowing 10 degrees of freedom (unconstrained parameters) ----

absolute_parameter_per_cluster <- purrr::map(fit_experiments, ~ runParameterEstimation(
  parameters = fit_parameters,
  experiments = .x,
  method = list(
    method = "LevenbergMarquardt",
    log_verbosity = 0, 
    iteration_limit = 2000,
    tolerance = 1e-6
  ),
  update_model = FALSE, 
  randomize_start_values = FALSE,
  create_parameter_sets = TRUE,
  calculate_statistics = FALSE,
  model = healthy_model
)$parameters)

# compare the results with Table 8 (table generation + correlation) ----
relative_parameter_per_cluster <- absolute_parameter_per_cluster |> 
  purrr::list_rbind(names_to = "cluster") |> 
  dplyr::select(cluster, parameter, start_value, value) |> 
  mutate (relative_concentration = 100*(value - start_value)/start_value,
          start_value = NULL, value = NULL) |> 
  tidyr::pivot_wider(names_from = parameter, values_from = relative_concentration) 

## define graphical parameters for enhanced Table visualisation ----
library(flextable)
library(scales)

# define variable names
variable_labels <- list(
  cluster = "Type of diseases",
  `(Prod of Ig from T1).k1` = "coefficient of IFN-gamma by Th1", 
  `(Prod of Ia from T1).k1` = "coefficient of TNF-alpha by Th1", 
  `(Prod of Ib from Tr).k1` = "coefficient of TGF-beta by Treg",
  `(Prod of I10 from Tr).v10r` = "coefficient of IL-10 by Treg",
  `(Induction of T1 from M).s12` = "activation of Th1 cells", 
  `(Induction of T2).s4` = "activation of Th2 cells", 
  `(Induction of T17).s21` = "activation of Th17 cells",
  `(Induction of T17).s6` = "activation of Th17 cells", 
  `(Induction of Tr).sb` = "activation of Treg cells",
  `(Induction of Tr).s10` = "activation of Treg cells"
)
header_row <- c(
  "\\text{Type of diseases}",
  "\\nu_{\\gamma_1}",
  "\\nu_{\\alpha_1}", 
  "\\nu_{\\beta_{\\rho}}",
  "\\nu_{10_{\\rho}}",
  "\\sigma_{12}",
  "\\sigma_{4}",
  "\\sigma_{21}",
  "\\sigma_{6}",
  "\\sigma_{\\beta}",
  "\\sigma_{10}") |> 
  as_equation() |>
  as_paragraph()
## save the output ----

relative_parameter_variations_flextable <- flextable(relative_parameter_per_cluster) |> 
  # Add gradient colouring based on values
  bg(
    j = setdiff(names(variable_labels), "cluster"), 
    bg = colourer) |> 
  # Format numbers (optional for consistent display)
  colformat_double(j = setdiff(names(variable_labels), "cluster"),
                   suffix = "%",
                   big.mark = ",", 
                   digits = 1) |> 
  append_chunks(j = "cluster",
                # what to append
                as_equation(c("\\text{Th1}\\uparrow \\text{Th2}\\downarrow",
                              "\\text{Th1}\\downarrow \\text{Th2}\\uparrow", 
                              "\\text{Th1}\\uparrow \\text{Th2}\\uparrow",
                              "\\text{Th1}\\downarrow \\text{Th2}\\downarrow"))
  ) |> 
  # Rename columns using LaTeX-like notation
  set_header_labels(values = variable_labels
  ) |> 
  add_header_row(values = header_row,
                 colwidths = rep(1, 11), top = FALSE
  ) |> 
  align(align = "center", part = "all") |> 
  set_caption("Table 8: Parameter variations in different types of diseases. 
              In blue, disease subtype induces shrinkage of the coefficients, 
              while red values correspond to increased parameter uptakes. ") |>
  merge_at(part = "head", i = 1:2, j= 1)


save_as_html(relative_parameter_variations_flextable,
  path = "results/Table8.html",
  title = "Table 8: Parameter variations per disease subtype."
)




