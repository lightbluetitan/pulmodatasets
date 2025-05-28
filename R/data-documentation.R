# PulmoDataSets - A Curated Collection of Pulmonary and Respiratory Disease Datasets
# Version 0.1.0
# Copyright (C) 2025 Renzo Caceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


#' Azithromycin for Respiratory Infections
#'
#' This dataset, respiratory_infections_df, is a data frame containing results from 15 clinical trials
#' comparing the effectiveness of azithromycin versus amoxycillin or amoxycillin/clavulanic acid (amoxyclav)
#' in the treatment of acute lower respiratory tract infections.
#'
#' The dataset name has been kept as 'respiratory_infections_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name respiratory_infections_df
#' @format A data frame with 15 observations and 11 variables:
#' \describe{
#'   \item{author}{Study author(s) (character vector)}
#'   \item{year}{Year of publication (integer vector)}
#'   \item{ai}{Number of successful treatments in azithromycin group (integer vector)}
#'   \item{n1i}{Total number of participants in azithromycin group (integer vector)}
#'   \item{ci}{Number of successful treatments in control group (integer vector)}
#'   \item{n2i}{Total number of participants in control group (integer vector)}
#'   \item{age}{Patient age characteristics (character vector)}
#'   \item{diag.ab}{Number diagnosed with acute bronchitis (integer vector)}
#'   \item{diag.cb}{Number diagnosed with chronic bronchitis (integer vector)}
#'   \item{diag.pn}{Number diagnosed with pneumonia (integer vector)}
#'   \item{ctrl}{Type of control treatment (character vector)}
#' }
#' @source Data taken from the metadat package version 1.4-0
#' @usage data(respiratory_infections_df)
#' @export
load("data/respiratory_infections_df.rda")
NULL

#' BCG Vaccine Against Tuberculosis
#'
#' This dataset, tuberculosis_vaccine_df, is a data frame containing results from 13 clinical trials
#' examining the effectiveness of the Bacillus Calmette-Guerin (BCG) vaccine against tuberculosis.
#'
#' The dataset name has been kept as 'tuberculosis_vaccine_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name tuberculosis_vaccine_df
#' @format A data frame with 13 observations and 9 variables:
#' \describe{
#'   \item{trial}{Trial identifier number (integer vector)}
#'   \item{author}{Study author(s) (character vector)}
#'   \item{year}{Year of publication (integer vector)}
#'   \item{tpos}{Number of TB positive cases in vaccinated group (integer vector)}
#'   \item{tneg}{Number of TB negative cases in vaccinated group (integer vector)}
#'   \item{cpos}{Number of TB positive cases in control group (integer vector)}
#'   \item{cneg}{Number of TB negative cases in control group (integer vector)}
#'   \item{ablat}{Absolute latitude of study location (integer vector)}
#'   \item{alloc}{Method of treatment allocation (character vector)}
#' }
#' @source Data taken from the metadat package version 1.4-0
#' @usage data(tuberculosis_vaccine_df)
#' @export
load("data/tuberculosis_vaccine_df.rda")
NULL



#' Monthly Pneumonia and Influenza Deaths in the U.S.
#'
#' This dataset, pneumonia_influenza_ts, is a time series containing monthly rates
#' of pneumonia and influenza deaths in the United States from 1968 to 1978.
#'
#' The dataset name has been kept as 'pneumonia_influenza_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series. The original content has not been modified
#' in any way.
#'
#' @name pneumonia_influenza_ts
#' @format A time series with 132 monthly observations from January 1968 to December 1978:
#' \describe{
#'   \item{Value}{Mortality rate (numeric vector)}
#'   \item{Time}{Monthly index from 1968 to 1978 (time series vector)}
#' }
#' @source Data taken from the astsa package version 2.2
#' @usage data(pneumonia_influenza_ts)
#' @export
load("data/pneumonia_influenza_ts.rda")
NULL


#' Lung Cancer Survival Data
#'
#' This dataset, lung_cancer_survival_df, is a data frame containing survival information
#' for 228 lung cancer patients, with 10 clinical variables including survival time,
#' patient status, age, gender, performance scores, and nutritional indicators.
#'
#' The dataset name has been kept as 'lung_cancer_survival_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name lung_cancer_survival_df
#' @format A data frame with 228 observations (patients) and 10 variables:
#' \describe{
#'   \item{inst}{Institution code where patient was treated (numeric)}
#'   \item{time}{Survival time in days from diagnosis (numeric)}
#'   \item{status}{Censoring status (1 = censored, 2 = died) (numeric)}
#'   \item{age}{Patient age at diagnosis in years (numeric)}
#'   \item{sex}{Gender (1 = male, 2 = female) (numeric)}
#'   \item{ph.ecog}{ECOG performance score (0=asymptomatic to 4=fully disabled) (numeric)}
#'   \item{ph.karno}{Karnofsky performance score (0-100) as rated by physician (numeric)}
#'   \item{pat.karno}{Karnofsky performance score (0-100) as self-reported by patient (numeric)}
#'   \item{meal.cal}{Daily calories consumed at meals (numeric)}
#'   \item{wt.loss}{Weight loss in last six months (pounds) (numeric)}
#' }
#' @source Data taken from the acro package version 0.1.4
#' @usage data(lung_cancer_survival_df)
#' @export
load("data/lung_cancer_survival_df.rda")
NULL



#' Chronic Bronchitis in Cardiff Men
#'
#' This dataset, bronchitis_Cardiff_df, is a data frame containing information from a study
#' assessing the effects of smoking and pollution on bronchitis diagnosis in a sample of 212 men
#' from Cardiff.
#'
#' The dataset name has been kept as 'bronchitis_Cardiff_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name bronchitis_Cardiff_df
#' @format A data frame with 212 observations and 4 variables:
#' \describe{
#'   \item{cig}{Number of cigarettes smoked per day (numeric)}
#'   \item{poll}{Pollution exposure level (numeric)}
#'   \item{r}{Bronchitis diagnosis (0 = no, 1 = yes) (integer)}
#'   \item{rfac}{Bronchitis diagnosis as a factor with 2 levels (factor)}
#' }
#' @source Data taken from the gamclass package version 0.62.5
#' @usage data(bronchitis_Cardiff_df)
#' @export
load("data/bronchitis_Cardiff_df.rda")
NULL


#' UK Smoking Habits
#'
#' This dataset, smoking_UK_tbl_df, is a tibble containing survey data on smoking habits
#' from the UK, with demographic characteristics and tobacco consumption patterns
#' from 1,691 respondents.
#'
#' The dataset name has been kept as 'smoking_UK_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package. The suffix 'tbl_df' indicates that this is a tibble data frame.
#' The original content has not been modified in any way.
#'
#' @name smoking_UK_tbl_df
#' @format A tibble with 1,691 observations and 12 variables:
#' \describe{
#'   \item{gender}{Gender of respondent (factor with 2 levels)}
#'   \item{age}{Age in years (integer)}
#'   \item{marital_status}{Marital status (factor with 5 levels)}
#'   \item{highest_qualification}{Highest education qualification (factor with 8 levels)}
#'   \item{nationality}{Nationality (factor with 8 levels)}
#'   \item{ethnicity}{Ethnic group (factor with 7 levels)}
#'   \item{gross_income}{Income bracket (factor with 10 levels)}
#'   \item{region}{UK region (factor with 7 levels)}
#'   \item{smoke}{Smoking status (factor with 2 levels)}
#'   \item{amt_weekends}{Cigarettes smoked on weekends (integer)}
#'   \item{amt_weekdays}{Cigarettes smoked on weekdays (integer)}
#'   \item{type}{Type of tobacco used (factor with 5 levels)}
#' }
#' @source Data taken from the openintro package version 2.5.0
#' @usage data(smoking_UK_tbl_df)
#' @export
load("data/smoking_UK_tbl_df.rda")
NULL

#' Nicotine Gum and Smoking Cessation
#'
#' This dataset, nicotine_gum_df, is a data frame containing meta-analysis data
#' on the effectiveness of nicotine gum for smoking cessation across 26 studies.
#'
#' The dataset name has been kept as 'nicotine_gum_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content
#' has not been modified in any way.
#'
#' @name nicotine_gum_df
#' @format A data frame with 26 observations (studies) and 4 variables:
#' \describe{
#'   \item{qt}{Number of successful quitters in treatment group (integer)}
#'   \item{tt}{Total participants in treatment group (integer)}
#'   \item{qc}{Number of successful quitters in control group (integer)}
#'   \item{tc}{Total participants in control group (integer)}
#' }
#' @source Data taken from the HSAUR3 package version 1.0-15
#' @usage data(nicotine_gum_df)
#' @export
load("data/nicotine_gum_df.rda")
NULL


#' Respiratory Illness Clinical Trial
#'
#' This dataset, respiratory_trial_df, is a data frame containing the respiratory status
#' of patients recruited for a randomized clinical multicenter trial, with 555 observations
#' across 111 subjects.
#'
#' The dataset name has been kept as 'respiratory_trial_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a standard data frame. The original content
#' has not been modified in any way.
#'
#' @name respiratory_trial_df
#' @format A data frame with 555 observations and 7 variables:
#' \describe{
#'   \item{centre}{Study center (factor with 2 levels)}
#'   \item{treatment}{Treatment group (factor with 2 levels)}
#'   \item{gender}{Patient gender (factor with 2 levels)}
#'   \item{age}{Patient age in years (numeric)}
#'   \item{status}{Respiratory status (factor with 2 levels)}
#'   \item{month}{Follow-up month (ordered factor with 5 levels)}
#'   \item{subject}{Patient identifier (factor with 111 levels)}
#' }
#' @source Data taken from the HSAUR3 package version 1.0-15
#' @usage data(respiratory_trial_df)
#' @export
load("data/respiratory_trial_df.rda")
NULL


#' Whooping Cough Deaths in London (1740-1881)
#'
#' This dataset, whooping_cough_ts, is a time series object containing annual counts
#' of deaths from whooping cough in London from 1740 to 1881, with three measurement
#' variables recorded each year.
#'
#' The dataset name has been kept as 'whooping_cough_ts' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'ts' indicates that this is a
#' time series object. The original content has not been modified in any way.
#'
#' @name whooping_cough_ts
#' @format A multivariate time series with 142 annual observations from 1740 to 1881
#' and 3 variables:
#' \describe{
#'   \item{wcough}{Number of whooping cough deaths (integer)}
#'   \item{ratio}{Death ratio (numeric)}
#'   \item{alldeaths}{Total deaths from all causes (integer)}
#' }
#' @source Data taken from the DAAG package version 1.25.6
#' @usage data(whooping_cough_ts)
#' @export
load("data/whooping_cough_ts.rda")
NULL


#' Philadelphia Whooping Cough 1925-1947
#'
#' This dataset, whooping_cough_phila_df, is a data frame containing weekly incidence
#' data of whooping cough in Philadelphia between 1925 and 1947, with 1,200 weekly
#' observations across 5 variables.
#'
#' The dataset name has been kept as 'whooping_cough_phila_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'df' indicates that this is a
#' standard data frame. The original content has not been modified in any way.
#'
#' @name whooping_cough_phila_df
#' @format A data frame with 1,200 weekly observations and 5 variables:
#' \describe{
#'   \item{YEAR}{Year of observation (integer)}
#'   \item{WEEK}{Week number (integer)}
#'   \item{PHILADELPHIA}{Weekly incidence count of whooping cough cases (integer)}
#'   \item{TIME}{Time index (numeric)}
#'   \item{TM}{Time marker (integer)}
#' }
#' @source Data taken from the epimdr package version 0.6-5
#' @usage data(whooping_cough_phila_df)
#' @export
load("data/whooping_cough_phila_df.rda")
NULL


#' US 1975-76 Influenza-Like Illness Data
#'
#' This dataset, influenza_us_1975_df, is a data frame containing influenza-like illness (ILI)
#' data for the lower 48 US states and District of Columbia during the 1975-76 season,
#' which was dominated by the A H3N2 Victoria strain.
#'
#' The dataset name has been kept as 'influenza_us_1975_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'df' indicates that this is a
#' standard data frame. The original content has not been modified in any way.
#'
#' @name influenza_us_1975_df
#' @format A data frame with 49 observations (states + DC) and 7 variables:
#' \describe{
#'   \item{State}{State identifier (integer)}
#'   \item{Acronym}{State abbreviation (factor with 51 levels)}
#'   \item{Pop}{State population (integer)}
#'   \item{Latitude}{Geographic latitude (numeric)}
#'   \item{Longitude}{Geographic longitude (numeric)}
#'   \item{Start}{Week of season start (integer)}
#'   \item{Peak}{Week of peak activity (integer)}
#' }
#' @source Data taken from the epimdr package version 0.6-5
#' @usage data(influenza_us_1975_df)
#' @export
load("data/influenza_us_1975_df.rda")
NULL


#' Copenhagen Whooping Cough 1900-1937
#'
#' This dataset, whooping_cough_dk_df, is a data frame containing weekly incidence data
#' of whooping cough in Copenhagen, Denmark between January 1900 and December 1937.
#' It includes 1,982 weekly observations across 8 demographic and epidemiological variables.
#'
#' The dataset name has been kept as 'whooping_cough_dk_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'df' indicates that this is a
#' standard data frame. The original content has not been modified in any way.
#'
#' @name whooping_cough_dk_df
#' @format A data frame with 1,982 weekly observations and 8 variables:
#' \describe{
#'   \item{date}{Date of observation (factor)}
#'   \item{births}{Number of births (integer)}
#'   \item{day}{Day of month (integer)}
#'   \item{month}{Month (integer 1-12)}
#'   \item{year}{Year (integer 1900-1937)}
#'   \item{cases}{Number of whooping cough cases (integer)}
#'   \item{deaths}{Number of whooping cough deaths (integer)}
#'   \item{popsize}{Population size (numeric)}
#' }
#' @source Data taken from the epimdr package version 0.6-5
#' @usage data(whooping_cough_dk_df)
#' @export
load("data/whooping_cough_dk_df.rda")
NULL


#' Smoking Deaths Among Doctors (British)
#'
#' This dataset, smoking_doctors_df, is a data frame containing data from a study
#' on smoking habits and coronary artery disease mortality among British doctors.
#' It includes 10 observations across 5 variables representing person-years of
#' observation and deaths during the study period.
#'
#' The dataset name has been kept as 'smoking_doctors_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'df' indicates that this is a
#' standard data frame. The original content has not been modified in any way.
#'
#' @name smoking_doctors_df
#' @format A data frame with 10 observations and 5 variables:
#' \describe{
#'   \item{age}{Age group (factor with 5 levels)}
#'   \item{smoke}{Smoking status (numeric)}
#'   \item{n}{Number of person-years at risk (numeric)}
#'   \item{y}{Number of deaths from coronary artery disease (numeric)}
#'   \item{ns}{Standardized mortality ratio (numeric)}
#' }
#' @source Data taken from the boot package version 1.3-31
#' @usage data(smoking_doctors_df)
#' @export
load("data/smoking_doctors_df.rda")
NULL


#' Youth Smoking and Lung Function
#'
#' This dataset, smoking_youth_tbl_df, is a tibble containing data from the Childhood
#' Respiratory Disease Study collected in the late 1970s, examining the effects of
#' smoking and second-hand smoke exposure on pulmonary function in 654 youths.
#'
#' The dataset name has been kept as 'smoking_youth_tbl_df' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'tbl_df' indicates that this is a
#' tibble data frame. The original content has not been modified in any way.
#'
#' @name smoking_youth_tbl_df
#' @format A tibble with 654 observations and 5 variables:
#' \describe{
#'   \item{age}{Age in years (integer)}
#'   \item{FEV}{Forced Expiratory Volume in liters (numeric)}
#'   \item{height}{Height in centimeters (numeric)}
#'   \item{sex}{Sex of participant (character)}
#'   \item{smoker}{Smoking status (character)}
#' }
#' @source Data taken from the LSTbook package version 0.6
#' @usage data(smoking_youth_tbl_df)
#' @export
load("data/smoking_youth_tbl_df.rda")
NULL



#' AI Assessment of Pulmonary Nodules
#'
#' This dataset, ai_ipn_performance_dt, is a data table containing performance metrics
#' of an artificial intelligence tool for risk stratification of 200 indeterminate
#' pulmonary nodules (IPNs) on chest CT scans.
#'
#' The dataset name has been kept as 'ai_ipn_performance_dt' to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset
#' as part of the PulmoDataSets package. The suffix 'dt' indicates that this is a
#' data table object. The original content has not been modified in any way.
#'
#' @name ai_ipn_performance_dt
#' @format A data table with 200 observations and 2 variables:
#' \describe{
#'   \item{cancer}{Malignancy status (0 = benign, 1 = malignant) (integer)}
#'   \item{rating}{AI risk assessment rating (integer)}
#' }
#' @source Data taken from the R4HCR package version 0.1
#' @usage data(ai_ipn_performance_dt)
#' @export
load("data/ai_ipn_performance_dt.rda")
NULL


#' Male Lung Cancer by Smoking Duration
#'
#' This dataset, lungca_cancer_deaths_df, is a data frame containing data on
#' man-years of smoking risk and observed lung cancer deaths among male smokers.
#' It includes 63 observations across 4 variables measuring smoking exposure
#' and mortality outcomes.
#'
#' The dataset name has been kept as 'lungca_cancer_deaths_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a standard data frame. The original content has not been modified
#' in any way.
#'
#' @name lungca_cancer_deaths_df
#' @format A data frame with 63 observations and 4 variables:
#' \describe{
#'   \item{yrs_smk}{Years of smoking (factor with 9 levels)}
#'   \item{pys}{Person-years of smoking exposure (numeric)}
#'   \item{num_cigs}{Number of cigarettes smoked daily (factor with 7 levels)}
#'   \item{deaths}{Number of lung cancer deaths (numeric)}
#' }
#' @source Data taken from the R4HCR package version 0.1
#' @usage data(lungca_cancer_deaths_df)
#' @export
load("data/lungca_cancer_deaths_df.rda")
NULL


#' Incidental or Screen-Detected Lung Nodules
#'
#' This dataset, lung_nodules_detection_dt, is a data table containing clinical
#' and radiological characteristics of 999 pulmonary nodules (up to 15mm in size) detected
#' on routine chest CT scans from 3 UK academic centers.
#'
#' The dataset name has been kept as 'lung_nodules_detection_dt' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'dt' indicates
#' that this is a data table object. The original content has not been modified
#' in any way.
#'
#' @name lung_nodules_detection_dt
#' @format A data table with 999 observations and 8 variables:
#' \describe{
#'   \item{sex}{Patient sex (factor with 2 levels)}
#'   \item{age}{Patient age in years (numeric)}
#'   \item{num.annotated}{Number of annotated nodules (numeric)}
#'   \item{location}{Nodule location (factor with 6 levels)}
#'   \item{spiculate}{Spiculation status (factor with 2 levels)}
#'   \item{smoke.status}{Smoking history (factor with 5 levels)}
#'   \item{diameter}{Nodule diameter in mm (numeric)}
#'   \item{malignant}{Malignancy status (0=benign, 1=malignant) (numeric)}
#' }
#' @source Data taken from the R4HCR package version 0.1
#' @usage data(lung_nodules_detection_dt)
#' @export
load("data/lung_nodules_detection_dt.rda")
NULL


#' Veterans Administration Lung Cancer Study
#'
#' This dataset, veterans_lung_cancer_df, is a data frame containing information from a randomized trial
#' of two treatment regimens for lung cancer. This is a standard survival analysis data set.
#'
#' The dataset name has been kept as 'veterans_lung_cancer_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name veterans_lung_cancer_df
#' @format A data frame with 137 observations and 8 variables:
#' \describe{
#'   \item{trt}{Treatment group (numeric)}
#'   \item{celltype}{Cell type (factor with 4 levels)}
#'   \item{time}{Survival time in days (numeric)}
#'   \item{status}{Censoring status (numeric)}
#'   \item{karno}{Karnofsky performance score (numeric)}
#'   \item{diagtime}{Time from diagnosis to randomization (numeric)}
#'   \item{age}{Age in years (numeric)}
#'   \item{prior}{Number of prior therapies (numeric)}
#' }
#' @source Data taken from the survival package version 3.8-3
#' @usage data(veterans_lung_cancer_df)
#' @export
load("data/veterans_lung_cancer_df.rda")
NULL



#' Lung cancer in 4 Danish cities 1968-71
#'
#' This dataset, danish_lung_incidence_df, is a data frame containing counts of
#' incident lung cancer cases and population size in four neighbouring Danish cities
#' by age group from 1968 to 1971.
#'
#' The dataset name has been kept as 'danish_lung_incidence_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name danish_lung_incidence_df
#' @format A data frame with 24 observations and 4 variables:
#' \describe{
#'   \item{city}{City of observation (factor with 4 levels)}
#'   \item{age}{Age group (factor with 6 levels)}
#'   \item{pop}{Population size (integer)}
#'   \item{cases}{Number of incident lung cancer cases (integer)}
#' }
#' @source Data taken from the ISwR package version 2.0-10
#' @usage data(danish_lung_incidence_df)
#' @export
load("data/danish_lung_incidence_df.rda")
NULL



#' UK lung and nasal cancer deaths 1936–80
#'
#' This dataset, engwales_cancer_mortality_df, is a data frame containing England and Wales
#' mortality rates from lung cancer, nasal cancer, and all causes between 1936 and 1980.
#' The 1936 rates are repeated as 1931 rates in order to accommodate follow-up for the nickel study.
#'
#' The dataset name has been kept as 'engwales_cancer_mortality_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name engwales_cancer_mortality_df
#' @format A data frame with 150 observations and 5 variables:
#' \describe{
#'   \item{year}{Year of observation (numeric)}
#'   \item{age}{Age group (numeric)}
#'   \item{lung}{Lung cancer mortality rate (numeric)}
#'   \item{nasal}{Nasal cancer mortality rate (numeric)}
#'   \item{other}{Mortality rate from all other causes (numeric)}
#' }
#' @source Data taken from the ISwR package version 2.0-10
#' @usage data(engwales_cancer_mortality_df)
#' @export
load("data/engwales_cancer_mortality_df.rda")
NULL


#' Total Lung Capacity
#'
#' This dataset, tlc_lung_capacity_df, is a data frame containing data on pretransplant total
#' lung capacity (TLC) measured by whole-body plethysmography for recipients of heart-lung transplants.
#'
#' The dataset name has been kept as 'tlc_lung_capacity_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name tlc_lung_capacity_df
#' @format A data frame with 32 observations and 4 variables:
#' \describe{
#'   \item{age}{Age in years (integer)}
#'   \item{sex}{Sex (0 = female, 1 = male) (integer)}
#'   \item{height}{Height in centimeters (integer)}
#'   \item{tlc}{Total lung capacity in liters (numeric)}
#' }
#' @source Data taken from the ISwR package version 2.0-10
#' @usage data(tlc_lung_capacity_df)
#' @export
load("data/tlc_lung_capacity_df.rda")
NULL


#' Neonatal Intubation Simulation
#'
#' This dataset, neonatal_intubation_times_df, is a data frame containing execution times (in seconds)
#' for specific actions performed by 37 midwife students during a high-fidelity neonatal resuscitation
#' simulation. The simulation was video recorded, and each critical action in the intubation process
#' was tagged for timing analysis.
#'
#' The dataset name has been kept as 'neonatal_intubation_times_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name neonatal_intubation_times_df
#' @format A data frame with 37 observations and 7 variables:
#' \describe{
#'   \item{id}{Participant ID (integer)}
#'   \item{deci_intub}{Time to decision to intubate (seconds) (integer)}
#'   \item{stop_ventil}{Time to stop ventilation (seconds) (integer)}
#'   \item{blade_in}{Time to insert laryngoscope blade (seconds) (integer)}
#'   \item{insert_tube}{Time to insert endotracheal tube (seconds) (integer)}
#'   \item{blade_out}{Time to remove laryngoscope blade (seconds) (integer)}
#'   \item{restart_ventil}{Time to restart ventilation (seconds) (integer)}
#' }
#' @source Data taken from the ViSiElse package version 1.2.2
#' @usage data(neonatal_intubation_times_df)
#' @export
load("data/neonatal_intubation_times_df.rda")
NULL


#' Ohio Children Wheeze Status
#'
#' This dataset, ohio_children_wheeze_df, is a data frame containing wheeze status data
#' from 2148 observations of children in Ohio. The data are part of a subset from the Six-City Study,
#' a longitudinal study examining the health effects of air pollution on children.
#'
#' The dataset name has been kept as 'ohio_children_wheeze_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name ohio_children_wheeze_df
#' @format A data frame with 2148 observations and 4 variables:
#' \describe{
#'   \item{resp}{Wheeze status (0 = no wheeze, 1 = wheeze) (integer)}
#'   \item{id}{Child identifier (integer)}
#'   \item{age}{Age of the child in years (integer)}
#'   \item{smoke}{Parental smoking status (0 = no, 1 = yes) (integer)}
#' }
#' @source Data taken from the geepack package version 1.3.12
#' @usage data(ohio_children_wheeze_df)
#' @export
load("data/ohio_children_wheeze_df.rda")
NULL

#' Ordinal respiratory outcomes
#'
#' This dataset, respiratory_trial_outcomes_df, is a data frame containing outcome data
#' from a randomized clinical trial described in Miller et al. (1993) evaluating a new
#' treatment for respiratory disorder. The study includes 111 patients who were randomly assigned
#' to one of two treatments (active or placebo). The patients were followed up at four visits,
#' and their response status was classified on an ordinal scale at each visit.
#'
#' The dataset name has been kept as 'respiratory_trial_outcomes_df' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the PulmoDataSets package. The suffix 'df' indicates
#' that this is a data frame object. The original content has not been modified
#' in any way.
#'
#' @name respiratory_trial_outcomes_df
#' @format A data frame with 111 observations and 5 variables:
#' \describe{
#'   \item{y1}{Ordinal response at visit 1 (integer)}
#'   \item{y2}{Ordinal response at visit 2 (integer)}
#'   \item{y3}{Ordinal response at visit 3 (integer)}
#'   \item{y4}{Ordinal response at visit 4 (integer)}
#'   \item{trt}{Treatment group (0 = placebo, 1 = active) (integer)}
#' }
#' @source Data taken from the geepack package version 1.3.12
#' @usage data(respiratory_trial_outcomes_df)
#' @export
load("data/respiratory_trial_outcomes_df.rda")
NULL


#' Respiratory Clinical Trial
#'
#' This dataset, respiratory_clinical_trial_df, is a data frame containing information from a clinical trial
#' of patients with respiratory illness, where 111 patients from two different clinics were randomized to receive
#' either placebo or an active treatment. Patients were examined at baseline and at four visits during treatment.
#' The respiratory status was determined at each visit, with 1 representing good status and 0 representing poor status.
#'
#' The dataset name has been kept as 'respiratory_clinical_trial_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name respiratory_clinical_trial_df
#' @format A data frame with 444 observations and 8 variables:
#' \describe{
#'   \item{center}{Study identifier (integer vector)}
#'   \item{id}{Patient identifier (integer vector)}
#'   \item{treat}{Treatment group (factor with 2 levels)}
#'   \item{sex}{Patient sex (factor with 2 levels)}
#'   \item{age}{Patient age in years (integer vector)}
#'   \item{baseline}{Baseline respiratory status (integer vector)}
#'   \item{visit}{Visit number (integer vector)}
#'   \item{outcome}{Respiratory status (integer vector)}
#' }
#' @source Data taken from the geepack package version 1.3.12
#' @usage data(respiratory_clinical_trial_df)
#' @export
load("data/respiratory_clinical_trial_df.rda")
NULL


#' UK Female Lung Disease Deaths
#'
#' This dataset, UK_female_lung_deaths_ts, is a time series object containing monthly deaths
#' from bronchitis, emphysema and asthma in the UK from 1974 to 1979, for females.
#'
#' The dataset name has been kept as 'UK_female_lung_deaths_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name UK_female_lung_deaths_ts
#' @format A time series (ts) object with 72 monthly observations from 1974 to 1979.
#' \describe{
#'   \item{value}{Number of deaths (numeric vector)}
#'   \item{time}{Time index (1974 to 1979)}
#' }
#' @source Data taken from the datasets package (R version 4.5.0), fdeaths dataset
#' @usage data(UK_female_lung_deaths_ts)
#' @export
load("data/UK_female_lung_deaths_ts.rda")
NULL


#' UK Male Lung Disease Deaths
#'
#' This dataset, UK_male_lung_deaths_ts, is a time series object containing monthly deaths
#' from bronchitis, emphysema and asthma in the UK from 1974 to 1979, for males.
#'
#' The dataset name has been kept as 'UK_male_lung_deaths_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'ts' indicates that the dataset is a time series object. The original content has not been modified
#' in any way.
#'
#' @name UK_male_lung_deaths_ts
#' @format A time series (ts) object with 72 monthly observations from 1974 to 1979.
#' \describe{
#'   \item{value}{Number of deaths (numeric vector)}
#'   \item{time}{Time index (1974 to 1979)}
#' }
#' @source Data taken from the datasets package (R version 4.5.0), mdeaths dataset
#' @usage data(UK_male_lung_deaths_ts)
#' @export
load("data/UK_male_lung_deaths_ts.rda")
NULL


#' Chicago Mortality and Pollution
#'
#' This dataset, chicago_pollution_df, is a data frame containing daily mortality, weather,
#' and pollution data for Chicago from 1987 to 2000 from the National Morbidity, Mortality
#' and Air Pollution Study (NMMAPS). It includes all-cause mortality, cardiovascular and
#' respiratory deaths, temperature, humidity, and pollution levels (PM10 and ozone).
#'
#' The dataset name has been kept as 'chicago_pollution_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a standard data frame. The original content has not been modified
#' in any way.
#'
#' @name chicago_pollution_df
#' @format A data frame with 5114 observations and 14 variables:
#' \describe{
#'   \item{date}{Date (Date object)}
#'   \item{time}{Time index (integer vector)}
#'   \item{year}{Year (numeric vector)}
#'   \item{month}{Month (numeric vector)}
#'   \item{doy}{Day of year (integer vector)}
#'   \item{dow}{Day of week (factor with 7 levels)}
#'   \item{death}{All-cause mortality count (integer vector)}
#'   \item{cvd}{Cardiovascular mortality count (integer vector)}
#'   \item{resp}{Respiratory mortality count (integer vector)}
#'   \item{temp}{Temperature (numeric vector)}
#'   \item{dptp}{Dew point temperature (numeric vector)}
#'   \item{rhum}{Relative humidity (numeric vector)}
#'   \item{pm10}{PM10 pollution level (numeric vector)}
#'   \item{o3}{Ozone level (numeric vector)}
#' }
#' @source Data taken from the dlnm package version 2.4.10
#' @usage data(chicago_pollution_df)
#' @export
load("data/chicago_pollution_df.rda")
NULL




#' US Mortality Rates by Cause and Gender
#'
#' This dataset, USMortality_df, is a data frame containing mortality rates across all ages
#' in the USA by cause of death, sex, rural and urban status from 2011 to 2013. The data
#' represent national aggregate rates under the Department of Health and Human Services (HHS).
#'
#' The dataset name has been kept as 'USMortality_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a standard data frame. The original content has not been modified
#' in any way.
#'
#' @name USMortality_df
#' @format A data frame with 40 observations and 5 variables:
#' \describe{
#'   \item{Status}{Rural/Urban status (factor with 2 levels)}
#'   \item{Sex}{Gender (factor with 2 levels)}
#'   \item{Cause}{Cause of death (factor with 10 levels)}
#'   \item{Rate}{Mortality rate (numeric vector)}
#'   \item{SE}{Standard error of mortality rate (numeric vector)}
#' }
#' @source Data taken from the lattice package version 0.22-6
#' @usage data(USMortality_df)
#' @export
load("data/USMortality_df.rda")
NULL


#' US Regional Mortality Rates by Cause and Gender
#'
#' This dataset, USRegionalMortality_df, is a data frame containing region-wise mortality rates
#' across all ages in the USA by cause of death, sex, rural and urban status from 2011 to 2013.
#' The data represent rates for each administrative region under the Department of Health and Human Services (HHS).
#'
#' The dataset name has been kept as 'USRegionalMortality_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name USRegionalMortality_df
#' @format A data frame with 400 observations and 6 variables:
#' \describe{
#'   \item{Region}{HHS administrative region (factor with 10 levels)}
#'   \item{Status}{Rural/Urban status (factor with 2 levels)}
#'   \item{Sex}{Gender (factor with 2 levels)}
#'   \item{Cause}{Cause of death (factor with 10 levels)}
#'   \item{Rate}{Mortality rate (numeric vector)}
#'   \item{SE}{Standard error of mortality rate (numeric vector)}
#' }
#' @source Data taken from the lattice package version 0.22-6
#' @usage data(USRegionalMortality_df)
#' @export
load("data/USRegionalMortality_df.rda")
NULL


#' Air Pollution and Mortality
#'
#' This dataset, air_polution_mortality_df, is a data frame containing information from
#' an early study exploring the relationship between air pollution and mortality across
#' 5 Standard Metropolitan Statistical Areas in the U.S. between 1959 and 1961.
#'
#' The dataset name has been kept as 'air_polution_mortality_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name air_polution_mortality_df
#' @format A data frame with 60 observations and 7 variables:
#' \describe{
#'   \item{City}{Metropolitan area (factor with 60 levels)}
#'   \item{Mort}{Mortality rate (numeric vector)}
#'   \item{Precip}{Annual precipitation in inches (integer vector)}
#'   \item{Educ}{Median years of education (numeric vector)}
#'   \item{NonWhite}{Percentage of non-white population (numeric vector)}
#'   \item{NOX}{Nitrogen oxide concentration (integer vector)}
#'   \item{SO2}{Sulfur dioxide concentration (integer vector)}
#' }
#' @source Data taken from the Sleuth3 package version 1.0-6
#' @usage data(air_polution_mortality_df)
#' @export
load("data/air_polution_mortality_df.rda")
NULL


#' Children Respiratory Rates Data
#'
#' This dataset, children_respiratory_rates_df, is a data frame containing respiratory rate
#' measurements from 618 Italian children aged between 15 days and 3 years, collected to
#' establish normal respiratory rate distributions for clinical assessment.
#'
#' The dataset name has been kept as 'children_respiratory_rates_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name children_respiratory_rates_df
#' @format A data frame with 618 observations and 2 variables:
#' \describe{
#'   \item{Age}{Child's age in days (numeric vector)}
#'   \item{Rate}{Respiratory rate in breaths per minute (integer vector)}
#' }
#' @source Data taken from the Sleuth3 package version 1.0-6
#' @usage data(children_respiratory_rates_df)
#' @export
load("data/children_respiratory_rates_df.rda")
NULL





#' Smoking and Lung Cancer
#'
#' This dataset, smoking_lung_cancer_df, is a data frame containing data from a retrospective
#' case-control study comparing smoking status between 86 lung cancer patients and 86 controls.
#'
#' The dataset name has been kept as 'smoking_lung_cancer_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name smoking_lung_cancer_df
#' @format A data frame with 2 observations and 3 variables:
#' \describe{
#'   \item{Smoking}{Smoking status (factor with 2 levels: "NonSmokers", "Smokers")}
#'   \item{Cancer}{Number of lung cancer cases (integer vector)}
#'   \item{Control}{Number of control cases (integer vector)}
#' }
#' @source Data taken from the Sleuth3 package version 1.0-6
#' @usage data(smoking_lung_cancer_df)
#' @export
load("data/smoking_lung_cancer_df.rda")
NULL


#' Respiratory Hospital Admissions
#'
#' This dataset, resp_hosp_no2_daily_df, is a data frame containing simulated data
#' for daily respiratory hospital admissions and ambient NO2 concentrations over 10 years.
#'
#' The dataset name has been kept as 'resp_hosp_no2_daily_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a standard data frame. The original content has not been modified
#' in any way.
#'
#' @name resp_hosp_no2_daily_df
#' @format A data frame with 3652 observations and 7 variables:
#' \describe{
#'   \item{date}{Calendar date (Date object)}
#'   \item{t}{Time index (integer vector)}
#'   \item{year}{Year (numeric vector)}
#'   \item{dow}{Day of week (factor with 7 levels)}
#'   \item{temp}{Temperature (numeric vector)}
#'   \item{no2}{NO2 concentration in μg/m3 (integer vector)}
#'   \item{hresp}{Respiratory hospital admissions count (numeric vector)}
#' }
#' @source Data taken from the collin package version 0.0.4
#' @usage data(resp_hosp_no2_daily_df)
#' @export
load("data/resp_hosp_no2_daily_df.rda")
NULL


#' Child Wheeze and Pollution
#'
#' This dataset, child_wheeze_pollution_df, is a data frame containing longitudinal data
#' on wheezing status for 16 children measured four times yearly at ages 9 through 12,
#' with associated pollution exposure information.
#'
#' The dataset name has been kept as 'child_wheeze_pollution_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name child_wheeze_pollution_df
#' @format A data frame with 64 observations and 5 variables:
#' \describe{
#'   \item{ID}{Child identifier (integer vector)}
#'   \item{Wheeze}{Wheezing status (integer vector)}
#'   \item{City}{City identifier (integer vector)}
#'   \item{Age}{Child's age in years (integer vector)}
#'   \item{Smoke}{Smoking exposure indicator (integer vector)}
#' }
#' @source Data taken from the geessbin package version 1.0.0
#' @usage data(child_wheeze_pollution_df)
#' @export
load("data/child_wheeze_pollution_df.rda")
NULL

#' Lung Disease Patients
#'
#' This dataset, patients_lung_diseases_tbl_df, is a tibble containing detailed clinical information
#' about 5,200 patients with various lung conditions, including demographics, smoking status,
#' lung capacity measurements, disease types, treatments received, hospital visits, and recovery status.
#'
#' The dataset name has been kept as 'patients_lung_diseases_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name patients_lung_diseases_tbl_df
#' @format A tibble with 5,200 observations and 8 variables:
#' \describe{
#'   \item{Age}{Patient age in years (numeric)}
#'   \item{Gender}{Patient gender (character)}
#'   \item{Smoking Status}{Smoker or non-smoker status (character)}
#'   \item{Lung Capacity}{Measured lung function (numeric)}
#'   \item{Disease Type}{Specific lung condition (character)}
#'   \item{Treatment Type}{Therapy, medication or surgery received (character)}
#'   \item{Hospital Visits}{Number of hospital visits (numeric)}
#'   \item{Recovered}{Recovery status (character)}
#' }
#' @source Data taken from Kaggle: https://www.kaggle.com/datasets/samikshadalvi/lungs-diseases-dataset
#' @usage data(patients_lung_diseases_tbl_df)
#' @export
load("data/patients_lung_diseases_tbl_df.rda")
NULL


#' COPD and Asthma Patients
#'
#' This dataset, asthma_patients_tbl_df, is a tibble containing clinical information
#' about 300 asthma (COPD) patients tracked over 3 years, including demographics,
#' smoking status, diagnosis details, medications, and peak flow measurements.
#'
#' The dataset name has been kept as 'asthma_patients_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' PulmoDataSets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble object. The original content has not been modified
#' in any way.
#'
#' @name asthma_patients_tbl_df
#' @format A tibble with 300 observations and 7 variables:
#' \describe{
#'   \item{Patient_ID}{Unique patient identifier (numeric)}
#'   \item{Age}{Patient age in years (numeric)}
#'   \item{Gender}{Patient gender (character)}
#'   \item{Smoking_Status}{Current/Former/Never smoker status (character)}
#'   \item{Asthma_Diagnosis}{Specific asthma/COPD diagnosis (character)}
#'   \item{Medication}{Prescribed treatment regimen (character)}
#'   \item{Peak_Flow}{Peak expiratory flow rate (numeric)}
#' }
#' @source Data taken from Kaggle: https://www.kaggle.com/datasets/jatinthakur706/copd-asthma-patient-dataset
#' @usage data(asthma_patients_tbl_df)
#' @export
load("data/asthma_patients_tbl_df.rda")
NULL

















