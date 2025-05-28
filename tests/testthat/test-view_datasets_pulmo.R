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

# view_datasets_pulmo

library(testthat)
library(PulmoDataSets)

test_that("view_datasets_pulmo works when package is loaded", {
  result <- view_datasets_pulmo()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_pulmo prints correct message", {
  output <- capture_messages(view_datasets_pulmo())
  expect_match(
    output[1],
    "Datasets available in the 'PulmoDataSets' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_pulmo returns expected datasets", {
  datasets <- view_datasets_pulmo()
  expected_datasets <- c(
    "respiratory_infections_df",
    "tuberculosis_vaccine_df",
    "pneumonia_influenza_ts",
    "lung_cancer_survival_df",
    "bronchitis_Cardiff_df",
    "smoking_UK_tbl_df",
    "nicotine_gum_df",
    "respiratory_trial_df",
    "whooping_cough_ts",
    "whooping_cough_phila_df",
    "influenza_us_1975_df",
    "whooping_cough_dk_df",
    "smoking_doctors_df",
    "smoking_youth_tbl_df",
    "ai_ipn_performance_dt",
    "lungca_cancer_deaths_df",
    "lung_nodules_detection_dt",
    "veterans_lung_cancer_df",
    "danish_lung_incidence_df",
    "engwales_cancer_mortality_df",
    "tlc_lung_capacity_df",
    "neonatal_intubation_times_df",
    "ohio_children_wheeze_df",
    "respiratory_trial_outcomes_df",
    "respiratory_clinical_trial_df",
    "UK_female_lung_deaths_ts",
    "UK_male_lung_deaths_ts",
    "chicago_pollution_df",
    "USMortality_df",
    "USRegionalMortality_df",
    "air_polution_mortality_df",
    "children_respiratory_rates_df",
    "smoking_lung_cancer_df",
    "resp_hosp_no2_daily_df",
    "child_wheeze_pollution_df",
    "patients_lung_diseases_tbl_df",
    "asthma_patients_tbl_df"


  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})
