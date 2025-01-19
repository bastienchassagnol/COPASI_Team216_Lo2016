# Installation and packages loading ----

# remotes::install_github("jpahle/CoRC")
library(CoRC)
library(ggplot2)
library(dplyr)

# Reproduce Table 4, namely steady-state concentrations ----

##  Run steady-state analysis ----

healthy_model <- loadModel("./models/team_2016_final_model_lo2016.cps")

# Which methods are used in Lo2016 paper for running this SteadyState condition?
healthy_model_steady_state <- runSteadyState(
  model = healthy_model,
  calculate_jacobian = TRUE,
  perform_stability_analysis = TRUE,
  method = list("use_newton"=TRUE, accept_negative_concentrations = FALSE)
)
# If a stable steady state has been found, the following prompt does not return any error.
testthat::expect_equal(healthy_model_steady_state$result, "found")

steady_state_concentrations <- healthy_model_steady_state$species |> 
  select(name, concentration) |> 
  mutate(name = factor(name, 
                          levels = c("M1", "M2", 
                                     "T1", "T2",
                                     "T17", "Tr",
                                     "Ig", "I2", "I4", "I21", "I6",
                                     "Ia", "I10", "Ib", "I12"),
                          labels = c("M1 macrophage", "M2 macrophage", 
                                     "Th1 cell", "Th2 cell",
                                     "Th17 cell", "Treg cell", 
                                     "IFN-g", "IL-2", "IL-4", "IL-21", "IL-6", 
                                     "TNF-a", "IL-10", "TFG-b", "IL-12"),
                       ordered = TRUE)) |> 
  arrange(name)

## Format steady-state analysis report for Table 4 ----
library(flextable)

steady_state_labels <- list(
  name = "Species",
  concentration = "Value(g/cm^3)")

steady_state_table <- flextable(steady_state_concentrations) |> 
  # format to scientific notation, allowing max 2 significant digits
  colformat_double(j = "concentration", digits = 3) |> 
  set_formatter(concentration = function(x) {
    formatC(x, format = "e", digits = 2)
  }) |> 
  add_footer_row(values = "doi:10.1371/journal.pone.0165782.t004", 
                 colwidths = 2) |> 
  compose(j = "name", 
          i = ~ name %in% c("IFN-g", "TNF-a", "TFG-b"),
          value = as_paragraph(as_equation(c("\\text{IFN}_{\\gamma}",
                                             "\\text{TNF}_{\\alpha}",
                                             "\\text{TGF}_{\\beta}")))) |> 
  set_header_labels(values = steady_state_labels) |> 
  bold(part = "header") |> 
  set_caption("Table 4: Steady-state concentrations of cytokines,
              macrophages and T cells in a healthy individual.") 

save_as_html(steady_state_table,
             path = "results/Table4.html",
             title = "Table 4: Steady-state concentrations."
)



