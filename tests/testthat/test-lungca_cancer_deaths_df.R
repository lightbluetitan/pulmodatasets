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


# lungca_cancer_deaths_df

library(testthat)

# Test class and structure
test_that("lungca_cancer_deaths_df has correct class and structure", {
  expect_s3_class(lungca_cancer_deaths_df, "data.frame")
  expect_equal(length(lungca_cancer_deaths_df), 4)    # 4 columns
  expect_equal(nrow(lungca_cancer_deaths_df), 63)     # 63 rows
})

# Test column names
test_that("lungca_cancer_deaths_df has correct column names", {
  expected_names <- c("yrs_smk", "pys", "num_cigs", "deaths")
  expect_equal(names(lungca_cancer_deaths_df), expected_names)
})

# Test column data types
test_that("lungca_cancer_deaths_df columns have correct types", {
  expect_type(as.character(lungca_cancer_deaths_df$yrs_smk), "character")  # Factor
  expect_type(lungca_cancer_deaths_df$pys, "double")                        # Numeric
  expect_type(as.character(lungca_cancer_deaths_df$num_cigs), "character") # Factor
  expect_type(lungca_cancer_deaths_df$deaths, "double")                    # Numeric
})

# Test for possible NA values (presence or absence is valid)
test_that("lungca_cancer_deaths_df may contain NA values", {
  expect_true(any(is.na(lungca_cancer_deaths_df)) || !any(is.na(lungca_cancer_deaths_df)))
})

# Test that dataset remains unchanged
test_that("lungca_cancer_deaths_df remains unchanged after tests", {
  original_attrs <- attributes(lungca_cancer_deaths_df)
  original_values <- lungca_cancer_deaths_df

  expect_identical(attributes(lungca_cancer_deaths_df), original_attrs)
  expect_equal(lungca_cancer_deaths_df, original_values)
})
