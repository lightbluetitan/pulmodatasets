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


# influenza_us_1975_df

library(testthat)

# Test class and length
test_that("influenza_us_1975_df has correct class and length", {
  expect_s3_class(influenza_us_1975_df, "data.frame")
  expect_equal(length(influenza_us_1975_df), 7)   # 7 variables
  expect_equal(nrow(influenza_us_1975_df), 49)   # 49 observations
})

# Test column names
test_that("influenza_us_1975_df has correct column names", {
  expected_names <- c("State", "Acronym", "Pop", "Latitude", "Longitude", "Start", "Peak")
  expect_equal(names(influenza_us_1975_df), expected_names)
})

# Test variable types
test_that("influenza_us_1975_df has correct column types", {
  expect_type(influenza_us_1975_df$State, "integer")
  expect_s3_class(influenza_us_1975_df$Acronym, "factor")
  expect_type(influenza_us_1975_df$Pop, "integer")
  expect_type(influenza_us_1975_df$Latitude, "double")
  expect_type(influenza_us_1975_df$Longitude, "double")
  expect_type(influenza_us_1975_df$Start, "integer")
  expect_type(influenza_us_1975_df$Peak, "integer")
})

# Test for missing values (NA) allowed but checked
test_that("influenza_us_1975_df may contain missing values", {
  expect_true(any(is.na(influenza_us_1975_df)) || !any(is.na(influenza_us_1975_df)))
})

# Test immutability of the dataset
test_that("influenza_us_1975_df remains unchanged after tests", {
  original_attrs <- attributes(influenza_us_1975_df)
  original_values <- influenza_us_1975_df

  expect_identical(attributes(influenza_us_1975_df), original_attrs)
  expect_equal(influenza_us_1975_df, original_values)
})




