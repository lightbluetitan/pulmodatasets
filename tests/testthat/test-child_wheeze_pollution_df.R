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


# child_wheeze_pollution_df

library(testthat)

# Test class
test_that("child_wheeze_pollution_df has correct class", {
  expect_s3_class(child_wheeze_pollution_df, "data.frame")
})

# Test number of columns
test_that("child_wheeze_pollution_df has 5 columns", {
  expect_equal(length(child_wheeze_pollution_df), 5)
})

# Test number of rows
test_that("child_wheeze_pollution_df has 64 rows", {
  expect_equal(nrow(child_wheeze_pollution_df), 64)
})

# Test column names
test_that("child_wheeze_pollution_df has expected column names", {
  expected_names <- c("ID", "Wheeze", "City", "Age", "Smoke")
  expect_equal(names(child_wheeze_pollution_df), expected_names)
})

# Test column types
test_that("child_wheeze_pollution_df columns have correct types", {
  expect_type(child_wheeze_pollution_df$ID, "integer")
  expect_type(child_wheeze_pollution_df$Wheeze, "integer")
  expect_type(child_wheeze_pollution_df$City, "integer")
  expect_type(child_wheeze_pollution_df$Age, "integer")
  expect_type(child_wheeze_pollution_df$Smoke, "integer")
})

# Test immutability and integrity
test_that("child_wheeze_pollution_df remains unchanged", {
  original_names <- names(child_wheeze_pollution_df)
  original_dim <- dim(child_wheeze_pollution_df)
  original_types <- sapply(child_wheeze_pollution_df, typeof)

  expect_equal(names(child_wheeze_pollution_df), original_names)
  expect_equal(dim(child_wheeze_pollution_df), original_dim)
  expect_equal(sapply(child_wheeze_pollution_df, typeof), original_types)
})
