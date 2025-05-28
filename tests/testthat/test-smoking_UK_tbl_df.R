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

# smoking_UK_tbl_df

library(testthat)

# Test structure and class
test_that("smoking_UK_tbl_df is a tibble with correct class and dimensions", {
  expect_s3_class(smoking_UK_tbl_df, "tbl_df")
  expect_s3_class(smoking_UK_tbl_df, "tbl")
  expect_s3_class(smoking_UK_tbl_df, "data.frame")
  expect_equal(ncol(smoking_UK_tbl_df), 12)
  expect_equal(length(smoking_UK_tbl_df), 12)
  expect_equal(nrow(smoking_UK_tbl_df), 1691)
})

# Test column names
test_that("smoking_UK_tbl_df has expected column names", {
  expected_names <- c(
    "gender", "age", "marital_status", "highest_qualification", "nationality",
    "ethnicity", "gross_income", "region", "smoke",
    "amt_weekends", "amt_weekdays", "type"
  )
  expect_named(smoking_UK_tbl_df, expected_names)
})

# Test variable types
test_that("smoking_UK_tbl_df columns have correct data types", {
  expect_s3_class(smoking_UK_tbl_df$gender, "factor")
  expect_type(smoking_UK_tbl_df$age, "integer")
  expect_s3_class(smoking_UK_tbl_df$marital_status, "factor")
  expect_s3_class(smoking_UK_tbl_df$highest_qualification, "factor")
  expect_s3_class(smoking_UK_tbl_df$nationality, "factor")
  expect_s3_class(smoking_UK_tbl_df$ethnicity, "factor")
  expect_s3_class(smoking_UK_tbl_df$gross_income, "factor")
  expect_s3_class(smoking_UK_tbl_df$region, "factor")
  expect_s3_class(smoking_UK_tbl_df$smoke, "factor")
  expect_type(smoking_UK_tbl_df$amt_weekends, "integer")
  expect_type(smoking_UK_tbl_df$amt_weekdays, "integer")
  expect_s3_class(smoking_UK_tbl_df$type, "factor")
})

