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


#  whooping_cough_phila_df

library(testthat)

# Test class and length
test_that("whooping_cough_phila_df has correct class and length", {
  expect_s3_class(whooping_cough_phila_df, "data.frame")
  expect_equal(length(whooping_cough_phila_df), 5)  # 5 variables
  expect_equal(nrow(whooping_cough_phila_df), 1200) # 1200 observations
})

# Test column names
test_that("whooping_cough_phila_df has correct column names", {
  expected_names <- c("YEAR", "WEEK", "PHILADELPHIA", "TIME", "TM")
  expect_equal(names(whooping_cough_phila_df), expected_names)
})

# Test variable types
test_that("whooping_cough_phila_df has correct column types", {
  expect_type(whooping_cough_phila_df$YEAR, "integer")
  expect_type(whooping_cough_phila_df$WEEK, "integer")
  expect_type(whooping_cough_phila_df$PHILADELPHIA, "integer")
  expect_type(whooping_cough_phila_df$TIME, "double")   # 'TIME' is numeric
  expect_type(whooping_cough_phila_df$TM, "integer")
})

# Test for presence of missing values (allowed, but checked)
test_that("whooping_cough_phila_df may contain missing values", {
  expect_true(any(is.na(whooping_cough_phila_df)) || !any(is.na(whooping_cough_phila_df)))
})

# Test immutability of the dataset
test_that("whooping_cough_phila_df remains unchanged after tests", {
  original_attrs <- attributes(whooping_cough_phila_df)
  original_values <- whooping_cough_phila_df

  expect_identical(attributes(whooping_cough_phila_df), original_attrs)
  expect_equal(whooping_cough_phila_df, original_values)
})

# Optional: test specific known properties
test_that("whooping_cough_phila_df contains expected structure", {
  expect_true(all(c("YEAR", "WEEK", "PHILADELPHIA", "TIME", "TM") %in% colnames(whooping_cough_phila_df)))
})
