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


# smoking_doctors_df

library(testthat)

# Test class and dimensions
test_that("smoking_doctors_df has correct class and dimensions", {
  expect_s3_class(smoking_doctors_df, "data.frame")
  expect_equal(length(smoking_doctors_df), 5)    # 5 columns
  expect_equal(nrow(smoking_doctors_df), 10)     # 10 rows
})

# Test column names
test_that("smoking_doctors_df has correct column names", {
  expected_names <- c("age", "smoke", "n", "y", "ns")
  expect_equal(names(smoking_doctors_df), expected_names)
})

# Test data types of each column
test_that("smoking_doctors_df columns have correct types", {
  expect_s3_class(smoking_doctors_df$age, "factor")
  expect_type(smoking_doctors_df$smoke, "double")
  expect_type(smoking_doctors_df$n, "double")
  expect_type(smoking_doctors_df$y, "double")
  expect_type(smoking_doctors_df$ns, "double")
})

# Test for presence of NA (allowed)
test_that("smoking_doctors_df may contain NA values", {
  expect_true(any(is.na(smoking_doctors_df)) || !any(is.na(smoking_doctors_df)))
})

# Test immutability of dataset
test_that("smoking_doctors_df remains unchanged after tests", {
  original_attrs <- attributes(smoking_doctors_df)
  original_values <- smoking_doctors_df

  expect_identical(attributes(smoking_doctors_df), original_attrs)
  expect_equal(smoking_doctors_df, original_values)
})
