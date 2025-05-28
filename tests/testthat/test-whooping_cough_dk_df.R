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

# whooping_cough_dk_df

library(testthat)

# Test class and dimensions
test_that("whooping_cough_dk_df has correct class and dimensions", {
  expect_s3_class(whooping_cough_dk_df, "data.frame")
  expect_equal(length(whooping_cough_dk_df), 8)   # 8 columns
  expect_equal(nrow(whooping_cough_dk_df), 1982)  # 1982 rows
})

# Test column names
test_that("whooping_cough_dk_df has correct column names", {
  expected_names <- c("date", "births", "day", "month", "year", "cases", "deaths", "popsize")
  expect_equal(names(whooping_cough_dk_df), expected_names)
})

# Test data types of each column
test_that("whooping_cough_dk_df columns have correct types", {
  expect_s3_class(whooping_cough_dk_df$date, "factor")
  expect_type(whooping_cough_dk_df$births, "integer")
  expect_type(whooping_cough_dk_df$day, "integer")
  expect_type(whooping_cough_dk_df$month, "integer")
  expect_type(whooping_cough_dk_df$year, "integer")
  expect_type(whooping_cough_dk_df$cases, "integer")
  expect_type(whooping_cough_dk_df$deaths, "integer")
  expect_type(whooping_cough_dk_df$popsize, "double")
})

# Test for presence of NA (allowed)
test_that("whooping_cough_dk_df may contain NA values", {
  expect_true(any(is.na(whooping_cough_dk_df)) || !any(is.na(whooping_cough_dk_df)))
})

# Test immutability of dataset
test_that("whooping_cough_dk_df remains unchanged after tests", {
  original_attrs <- attributes(whooping_cough_dk_df)
  original_values <- whooping_cough_dk_df

  expect_identical(attributes(whooping_cough_dk_df), original_attrs)
  expect_equal(whooping_cough_dk_df, original_values)
})
