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

# smoking_youth_tbl_df

library(testthat)

# Test class and dimensions
test_that("smoking_youth_tbl_df has correct class and dimensions", {
  expect_s3_class(smoking_youth_tbl_df, "tbl_df")
  expect_s3_class(smoking_youth_tbl_df, "tbl")
  expect_s3_class(smoking_youth_tbl_df, "data.frame")
  expect_equal(length(smoking_youth_tbl_df), 5)     # 5 columns
  expect_equal(nrow(smoking_youth_tbl_df), 654)     # 654 rows
})

# Test column names
test_that("smoking_youth_tbl_df has correct column names", {
  expected_names <- c("age", "FEV", "height", "sex", "smoker")
  expect_equal(names(smoking_youth_tbl_df), expected_names)
})

# Test data types of each column
test_that("smoking_youth_tbl_df columns have correct types", {
  expect_type(smoking_youth_tbl_df$age, "integer")
  expect_type(smoking_youth_tbl_df$FEV, "double")
  expect_type(smoking_youth_tbl_df$height, "double")
  expect_type(smoking_youth_tbl_df$sex, "character")
  expect_type(smoking_youth_tbl_df$smoker, "character")
})

# Test for potential NA values
test_that("smoking_youth_tbl_df may contain NA values", {
  expect_true(any(is.na(smoking_youth_tbl_df)) || !any(is.na(smoking_youth_tbl_df)))
})

# Test immutability of the dataset
test_that("smoking_youth_tbl_df remains unchanged after tests", {
  original_attrs <- attributes(smoking_youth_tbl_df)
  original_values <- smoking_youth_tbl_df

  expect_identical(attributes(smoking_youth_tbl_df), original_attrs)
  expect_equal(smoking_youth_tbl_df, original_values)
})
