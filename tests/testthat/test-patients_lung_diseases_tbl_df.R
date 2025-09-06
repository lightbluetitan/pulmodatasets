# PulmoDataSets - A Curated Collection of Pulmonary and Respiratory Disease Datasets
# Version 0.2.0
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


# patients_lung_diseases_tbl_df

library(testthat)

# Test class
test_that("patients_lung_diseases_tbl_df has correct class", {
  expect_s3_class(patients_lung_diseases_tbl_df, "spec_tbl_df")
  expect_s3_class(patients_lung_diseases_tbl_df, "tbl_df")
  expect_s3_class(patients_lung_diseases_tbl_df, "tbl")
  expect_s3_class(patients_lung_diseases_tbl_df, "data.frame")
})

# Test number of columns
test_that("patients_lung_diseases_tbl_df has 8 columns", {
  expect_equal(length(patients_lung_diseases_tbl_df), 8)
})

# Test number of rows
test_that("patients_lung_diseases_tbl_df has 5200 rows", {
  expect_equal(nrow(patients_lung_diseases_tbl_df), 5200)
})

# Test column names
test_that("patients_lung_diseases_tbl_df has expected column names", {
  expected_names <- c(
    "Age", "Gender", "Smoking Status", "Lung Capacity",
    "Disease Type", "Treatment Type", "Hospital Visits", "Recovered"
  )
  expect_equal(names(patients_lung_diseases_tbl_df), expected_names)
})

# Test column types
test_that("patients_lung_diseases_tbl_df columns have correct types", {
  expect_type(patients_lung_diseases_tbl_df$Age, "double")
  expect_type(patients_lung_diseases_tbl_df$Gender, "character")
  expect_type(patients_lung_diseases_tbl_df$`Smoking Status`, "character")
  expect_type(patients_lung_diseases_tbl_df$`Lung Capacity`, "double")
  expect_type(patients_lung_diseases_tbl_df$`Disease Type`, "character")
  expect_type(patients_lung_diseases_tbl_df$`Treatment Type`, "character")
  expect_type(patients_lung_diseases_tbl_df$`Hospital Visits`, "double")
  expect_type(patients_lung_diseases_tbl_df$Recovered, "character")
})

# Test immutability and structure
test_that("patients_lung_diseases_tbl_df structure is preserved", {
  original_names <- names(patients_lung_diseases_tbl_df)
  original_dim <- dim(patients_lung_diseases_tbl_df)
  original_types <- sapply(patients_lung_diseases_tbl_df, typeof)

  expect_equal(names(patients_lung_diseases_tbl_df), original_names)
  expect_equal(dim(patients_lung_diseases_tbl_df), original_dim)
  expect_equal(sapply(patients_lung_diseases_tbl_df, typeof), original_types)
})
