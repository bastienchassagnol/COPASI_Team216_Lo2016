# COPASI_Team216_Lo2016
Reproduce the figures derived from the ODE model described in "Inflammatory Bowel Disease: How Effective Is TNF-α Suppression?" article, published in PLoS One, in 2016, and submit the resulting curated and annotated model to the BioModels database, adhering to their stringent standards.

Below, we described remaining steps before final publication to BioModels standards. 

## Build models

- Strange units (such as weeks instead of seconds or days or grams instead of moles) 
- May have to check some of the fixed parameters, in particular decay rates of cell populations
- Typos in equation 8 (should be IL-2 both at numerator and denominator)
- General advise: decompose each chemical process into independant annotations (streamline curation, ensure afterwards that the differential equations are properly written, ..)
- There's a differential equation of M0, as being differentiated into M1 and M2. Yet, from the paper, it is assumed to be a *fixed* influx. Ensure that it is the case in the global variables.

## Tables
- **Done**: Able to reproduce the steady-state equations, up-to a normlisation constant (Table 4)
- **ToDo**: Parameter estimation, after introducing dysregulations, for each of the four endotypes would require to have the omics profiles for all the 58 patients of the cohorts

## Figures to be reproduced

- Fig2: **Sensititvy analyses**: without the code and the random seed, may exhbit sensitive discrepancies
- Fig3: **Dysregulated mechanisms**: infer back the variations of the parameters would require that the omics expression profiles are left avalaible, which is not the case

## Authors' contacts and checkings

- Original **code scripts**, or ODE parameter configurations, to reproduce the results
- - Which random seed have they used for the PRCC analyses reported in Table 5 and Fig 2?
- Raw transcriptomic profiles to reproduce DGEA summarised results reported in Table 7 (proper **parameter estimation** reported in Table 8 requires several observations and uncertainty, which is not currently feasible with only one summarised point reported).
- Which parameter estimation optimisation algorithm have they used for Table 8 (between 'DifferentialEvolution', 'SRES', 'EvolutionaryProgram', 'GeneticAlgorithm', 'GeneticAlgorithmSR', 'HookeJeeves', 'LevenbergMarquardt', 'NL2SOL', 'NelderMead', 'ParticleSwarm', 'Praxis', 'RandomSearch', 'ScatterSearch', 'SimulatedAnnealing', 'SteepestDescent' and 'TruncatedNewton') + the hyper-parameters used (number of maximal iterations, tolerance threshold, ...)


