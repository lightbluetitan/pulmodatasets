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

# asthma_patients_tbl_df

library(testthat)

# Test class
test_that("asthma_patients_tbl_df has correct class", {
  expect_s3_class(asthma_patients_tbl_df, "spec_tbl_df")
  expect_s3_class(asthma_patients_tbl_df, "tbl_df")
  expect_s3_class(asthma_patients_tbl_df, "tbl")
  expect_s3_class(asthma_patients_tbl_df, "data.frame")
})

# Test number of columns
test_that("asthma_patients_tbl_df has 7 columns", {
  expect_equal(length(asthma_patients_tbl_df), 7)
})

# Test number of rows
test_that("asthma_patients_tbl_df has 300 rows", {
  expect_equal(nrow(asthma_patients_tbl_df), 300)
})

# Test column names
test_that("asthma_patients_tbl_df has expected column names", {
  expected_names <- c(
    "Patient_ID", "Age", "Gender", "Smoking_Status",
    "Asthma_Diagnosis", "Medication", "Peak_Flow"
  )
  expect_equal(names(asthma_patients_tbl_df), expected_names)
})

# Test column types
test_that("asthma_patients_tbl_df columns have correct types", {
  expect_type(asthma_patients_tbl_df$Patient_ID, "double")
  expect_type(asthma_patients_tbl_df$Age, "double")
  expect_type(asthma_patients_tbl_df$Gender, "character")
  expect_type(asthma_patients_tbl_df$Smoking_Status, "character")
  expect_type(asthma_patients_tbl_df$Asthma_Diagnosis, "character")
  expect_type(asthma_patients_tbl_df$Medication, "character")
  expect_type(asthma_patients_tbl_df$Peak_Flow, "double")
})

# Test dataset structure integrity
test_that("asthma_patients_tbl_df structure is preserved", {
  original_names <- names(asthma_patients_tbl_df)
  original_dim <- dim(asthma_patients_tbl_df)
  original_types <- sapply(asthma_patients_tbl_df, typeof)

  expect_equal(names(asthma_patients_tbl_df), original_names)
  expect_equal(dim(asthma_patients_tbl_df), original_dim)
  expect_equal(sapply(asthma_patients_tbl_df, typeof), original_types)
})
