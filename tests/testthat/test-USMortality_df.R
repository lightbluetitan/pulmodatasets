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


# USMortality_df

library(testthat)

# Test class
test_that("USMortality_df has correct class", {
  expect_s3_class(USMortality_df, "data.frame")
})

# Test number of columns
test_that("USMortality_df has 5 columns", {
  expect_equal(length(USMortality_df), 5)
})

# Test number of rows
test_that("USMortality_df has 40 rows", {
  expect_equal(nrow(USMortality_df), 40)
})

# Test column names
test_that("USMortality_df has expected column names", {
  expected_names <- c("Status", "Sex", "Cause", "Rate", "SE")
  expect_equal(names(USMortality_df), expected_names)
})

# Test column types
test_that("USMortality_df columns have correct types", {
  expect_s3_class(USMortality_df$Status, "factor")
  expect_s3_class(USMortality_df$Sex, "factor")
  expect_s3_class(USMortality_df$Cause, "factor")
  expect_type(USMortality_df$Rate, "double")
  expect_type(USMortality_df$SE, "double")
})

# Test immutability
test_that("USMortality_df remains unchanged after tests", {
  original_names <- names(USMortality_df)
  original_dim <- dim(USMortality_df)
  original_types <- sapply(USMortality_df, typeof)

  expect_equal(names(USMortality_df), original_names)
  expect_equal(dim(USMortality_df), original_dim)
  expect_equal(sapply(USMortality_df, typeof), original_types)
})
