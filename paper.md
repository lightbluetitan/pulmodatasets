---
title: 'PulmoDataSets: An R Package for Teaching Applied Statistics and Data Science
  in Pulmonary Medicine'
tags:
- R
- pulmonary medicine
- respiratory diseases
- teaching
- applied statistics
- data science
- epidemiology
- public health
authors:
- name: Renzo Caceres Rossi
  orcid: "0009-0005-0744-854X"
  affiliation: 1
affiliations:
- name: Independent Researcher
  index: 1
date: "9 March 2026"
bibliography: paper.bib
---


# Summary

`PulmoDataSets` is an R package that provides a comprehensive and curated 
collection of datasets related to the lungs, the respiratory system, and 
associated diseases [@caceres2025pulmodatasets]. The package includes 
epidemiological, clinical, experimental, and simulated datasets covering 
conditions such as lung cancer, asthma, Chronic Obstructive Pulmonary 
Disease (COPD), tuberculosis, whooping cough, pneumonia, influenza, and 
other respiratory illnesses. Designed as open-source educational technology, 
it supports the teaching of applied statistics and data science in the 
context of pulmonary medicine, making curated respiratory health data 
immediately accessible to students, educators, data scientists, physicians, 
and pulmonary specialists in a single, ready-to-use R package.


# Statement of Need

R is a programming language with a rich and well-established culture of dataset 
packages [@R:2025; @wickham2023r]. However, the majority of these packages 
contain datasets that are dispersed across multiple topics and domains. Widely 
used packages such as `MASS` [@venables2002mass], `datasets` [@R:2025], and 
`openintro` [@cetinkaya2024openintro] provide heterogeneous collections that 
span diverse subject areas without thematic focus. Specialized dataset packages 
curating a single, cohesive topic remain scarce in the R ecosystem, and packages 
focused specifically on medicine or any of its branches are even rarer.

Respiratory diseases represent one of the leading causes of morbidity and 
mortality worldwide [@labaki2020chronic; @ferkol2014global]. Despite the 
clinical and epidemiological relevance of pulmonary medicine, no dataset package 
in R is specifically dedicated to the lungs and respiratory diseases. Instructors 
and students working in biostatistics, epidemiology, data science, and pulmonary 
medicine are frequently required to search across multiple sources, clean, and 
restructure data before any meaningful statistical analysis or classroom exercise 
can begin.

`PulmoDataSets` addresses this gap by providing a curated, ready-to-use 
collection of datasets exclusively focused on the lungs, the respiratory system, 
and associated diseases [@caceres2025pulmodatasets]. The package introduces two 
design features that distinguish it from existing dataset packages in R. First, 
each dataset uses a suffix to explicitly identify its R object type: `_df` for 
data frames, `_dt` for data tables, `_tbl_df` for tibbles, and `_ts` for time 
series objects. This naming convention allows users to immediately identify the 
structure of a dataset before loading it, reducing friction in both teaching and 
analytical workflows. Second, the package includes the utility function 
`view_datasets_PulmoDataSets()`, which prints a complete, formatted list of all 
available datasets directly in the R console — a feature absent in most dataset 
packages in the R ecosystem.

Table 1 summarizes the key differences between `PulmoDataSets` and three 
widely used dataset packages in R.

| Feature                                       | `datasets` | `MASS` | `openintro` | `PulmoDataSets` |
|-----------------------------------------------|------------|--------|-------------|-----------------|
| Thematic focus                                | No         | No     | No          | Yes             |
| Pulmonary medicine datasets                   | No         | No     | No          | Yes             |
| Object type suffixes (_df, _dt, _tbl_df, _ts) | No         | No     | No          | Yes             |
| Dataset listing function                      | No         | No     | No          | Yes             |
| Available on CRAN                             | Yes        | Yes    | Yes         | Yes             |
| Active GitHub repository                      | N/A        | No     | Yes         | Yes             |

Table: Comparison of `PulmoDataSets` with selected dataset packages in R.


# Functionality

`PulmoDataSets` is available on CRAN and can be installed and loaded 
as follows:
```r
install.packages("PulmoDataSets")
library(PulmoDataSets)
```

The package contains 36 datasets covering the lungs, the respiratory 
system, and associated diseases. The datasets span a wide range of 
topics including lung cancer, asthma, Chronic Obstructive Pulmonary 
Disease (COPD), tuberculosis, whooping cough, pneumonia, influenza, 
smoking, and air pollution. They include epidemiological, clinical, 
experimental, simulated, and historical data, making `PulmoDataSets` 
suitable for a broad range of statistical and data science applications 
in pulmonary medicine.

The design of `PulmoDataSets` follows the Rossi Design Philosophy 
(RDP) [@caceresrossi2025rdp], a systematic methodology for developing 
R dataset packages that enhances usability, transparency, and 
discoverability. The RDP is built on four core principles:

- **Structural Transparency**: dataset names use standardized suffixes 
  to indicate their R object type.
- **Predictive Consistency**: a uniform naming pattern 
  (`dataset_name_suffix`) ensures predictability across all datasets.
- **Enhanced Discoverability**: a utility function lists all available 
  datasets directly in the R console.
- **User-Centric Documentation**: object types are explicitly stated 
  in dataset names and documentation.

In practice, each dataset in `PulmoDataSets` uses one of four suffixes 
to identify its R object type:

- `_df`: standard R data frame
- `_dt`: data table (`data.table` ecosystem)
- `_tbl_df`: tibble (`tidyverse` ecosystem)
- `_ts`: time series (`ts` object, base R)

For example, `bronchitis_Cardiff_df` is a data frame, 
`asthma_patients_tbl_df` is a tibble, `ai_ipn_performance_dt` is a 
data table, and `pneumonia_influenza_ts` is a time series object. 
This naming convention allows users to immediately identify the 
structure of a dataset before loading it, reducing friction in both 
teaching and analytical workflows. Furthermore, each dataset includes 
a documentation tooltip that explicitly states its R object type 
alongside a description of its contents, providing an additional 
reference point for users unfamiliar with the suffix convention.

![Dataset tooltips in RStudio showing the R object type explicitly stated in the documentation for `tlc_lung_capacity_df` (data frame), `lung_nodules_detection_dt` (data table), and `pneumonia_influenza_ts` (time series).](imagen_002.png)

The package also includes the utility function 
`view_datasets_PulmoDataSets()`, which prints a complete, formatted 
list of all available datasets directly in the R console:

```r
library(PulmoDataSets)

view_datasets_PulmoDataSets()
```

```
Datasets available in the 'PulmoDataSets' package:
 [1] "UK_female_lung_deaths_ts"      "UK_male_lung_deaths_ts"       
 [3] "USMortality_df"                "USRegionalMortality_df"       
 [5] "ai_ipn_performance_dt"         "air_polution_mortality_df"    
 [7] "asthma_patients_tbl_df"        "bronchitis_Cardiff_df"        
 [9] "chicago_pollution_df"          "child_wheeze_pollution_df"    
[11] "children_respiratory_rates_df" "danish_lung_incidence_df"     
[13] "engwales_cancer_mortality_df"  "influenza_us_1975_df"         
[15] "lung_cancer_survival_df"       "lung_nodules_detection_dt"    
[17] "lungca_cancer_deaths_df"       "neonatal_intubation_times_df" 
[19] "nicotine_gum_df"               "ohio_children_wheeze_df"      
[21] "patients_lung_diseases_tbl_df" "pneumonia_influenza_ts"       
[23] "respiratory_clinical_trial_df" "respiratory_infections_df"    
[25] "respiratory_trial_df"          "respiratory_trial_outcomes_df"
[27] "smoking_UK_tbl_df"             "smoking_doctors_df"           
[29] "smoking_lung_cancer_df"        "smoking_youth_tbl_df"         
[31] "tlc_lung_capacity_df"          "tuberculosis_vaccine_df"      
[33] "veterans_lung_cancer_df"       "whooping_cough_dk_df"         
[35] "whooping_cough_phila_df"       "whooping_cough_ts"            
```

Individual datasets can be loaded and explored using standard R 
functions:

```r
# Load a dataset
data(nicotine_gum_df)

# Preview the first rows
head(nicotine_gum_df)

# Open in RStudio Viewer
View(nicotine_gum_df)
```

# Usage in Teaching and Learning

`PulmoDataSets` is designed to support both instructors and students 
in teaching and learning applied statistics and data science in the 
context of pulmonary medicine.

From the instructor's perspective, `PulmoDataSets` eliminates the 
time-consuming process of searching, cleaning, and preprocessing data 
before it can be used in a classroom setting. With 36 curated, 
ready-to-use datasets, instructors can immediately design exercises, 
assignments, and demonstrations covering a wide range of statistical 
methods. The diversity of R object types available in the package — 
data frames, tibbles, data tables, and time series objects — allows 
instructors to select datasets aligned with the specific R paradigm 
taught in their course, whether base R, the `tidyverse` ecosystem, 
the `data.table` framework, or time series analysis. For example, 
datasets such as `bronchitis_Cardiff_df` and `lung_cancer_survival_df` 
are well-suited for logistic regression and survival analysis exercises, 
while `pneumonia_influenza_ts` and `whooping_cough_ts` support time 
series decomposition and forecasting demonstrations. Datasets such as 
`tuberculosis_vaccine_df` and `respiratory_clinical_trial_df` can be 
used to illustrate clinical trial methodology and vaccine efficacy 
analysis.

From the student's perspective, `PulmoDataSets` provides immediate 
access to publicly available pulmonary-related datasets from the 
first session in R. The utility function `view_datasets_PulmoDataSets()` allows 
students to explore the full catalog of available datasets directly 
in the R console, without consulting external documentation. The 
standardized suffix naming convention — a core principle of the Rossi 
Design Philosophy [@caceresrossi2025rdp] — enables students to 
identify the structure of each dataset before loading it, reducing 
confusion and accelerating the learning process. Working with thematically focused, 
domain-specific datasets strengthens the connection between statistical methods and their 
practical applications in pulmonary medicine and public health.

`PulmoDataSets` is suitable for adoption in undergraduate and graduate 
courses in biostatistics, epidemiology, data science, and public 
health, as well as in research training programs and self-directed 
learning in pulmonary medicine [@doudesis2022datascience].



# Story of the Project

In mid-2024, I developed my first R package, `timeSeriesDataSets` 
[@caceresrossi2024timeseries], a specialized collection of datasets 
designed for teaching and working with time series analysis in R. 
Through the development of that project, I became aware of a broader 
structural gap within the R ecosystem: while many general-purpose 
dataset packages exist, there is a limited number of thematically 
specialized dataset collections tailored to specific scientific domains.

Conversations with colleagues — particularly pulmonologists, medical 
researchers, and university professors — reinforced this observation. 
Many expressed the difficulty of finding curated, analysis-ready 
respiratory datasets suitable for research, classroom demonstrations, 
methodological testing, and statistical instruction. A significant 
amount of time was often spent locating, cleaning, harmonizing, and 
structuring data before it could be used pedagogically or analytically.

`PulmoDataSets` emerged as a response to this need [@caceres2025pulmodatasets].


# Acknowledgements

The author would like to thank Oscar Alejandro Sialer Gallo, Past 
President of EMBS IEEE UDEP (2025), and Imanol D'Alessandro Romero 
Farro, current President of EMBS IEEE UDEP (2026), and their teams 
of collaborators, for their support, leadership, and valuable 
discussions throughout the development of this project.


# References