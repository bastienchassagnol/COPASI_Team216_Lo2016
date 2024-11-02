# installation ----

# remotes::install_github("jpahle/CoRC")
library(CoRC)
library(ggplot2)

# Reproduce Table 4, namely steady-state concentrations ----
healthy_model <- loadModel("./models/team_2016_final_model_lo2016.cps")
setParameters(model=healthy_model, 
              key = "(Proliferation of T1).s2",
              value = 1.23)
species <- getSpecies(model=  healthy_model)
model_parameters <- getParameters(model = healthy_model,"(Proliferation of T1).s2")


healthy_model_steady_state <- runSteadyState(
  calculate_jacobian = TRUE,
  model = healthy_model
)
steady_state_concentrations <- healthy_model_steady_state$species
getParameterReferences()

