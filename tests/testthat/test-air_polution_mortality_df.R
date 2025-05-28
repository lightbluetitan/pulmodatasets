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

# air_polution_mortality_df


library(testthat)

# Test class
test_that("air_polution_mortality_df has correct class", {
  expect_s3_class(air_polution_mortality_df, "data.frame")
})

# Test number of columns
test_that("air_polution_mortality_df has 7 columns", {
  expect_equal(length(air_polution_mortality_df), 7)
})

# Test number of rows
test_that("air_polution_mortality_df has 60 rows", {
  expect_equal(nrow(air_polution_mortality_df), 60)
})

# Test column names
test_that("air_polution_mortality_df has expected column names", {
  expected_names <- c("City", "Mort", "Precip", "Educ", "NonWhite", "NOX", "SO2")
  expect_equal(names(air_polution_mortality_df), expected_names)
})

# Test column types
test_that("air_polution_mortality_df columns have correct types", {
  expect_s3_class(air_polution_mortality_df$City, "factor")
  expect_type(air_polution_mortality_df$Mort, "double")
  expect_type(air_polution_mortality_df$Precip, "integer")
  expect_type(air_polution_mortality_df$Educ, "double")
  expect_type(air_polution_mortality_df$NonWhite, "double")
  expect_type(air_polution_mortality_df$NOX, "integer")
  expect_type(air_polution_mortality_df$SO2, "integer")
})

# Test immutability
test_that("air_polution_mortality_df remains unchanged after tests", {
  original_names <- names(air_polution_mortality_df)
  original_dim <- dim(air_polution_mortality_df)
  original_types <- sapply(air_polution_mortality_df, typeof)

  expect_equal(names(air_polution_mortality_df), original_names)
  expect_equal(dim(air_polution_mortality_df), original_dim)
  expect_equal(sapply(air_polution_mortality_df, typeof), original_types)
})
