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

# smoking_lung_cancer_df

library(testthat)

# Test class
test_that("smoking_lung_cancer_df has correct class", {
  expect_s3_class(smoking_lung_cancer_df, "data.frame")
})

# Test number of columns
test_that("smoking_lung_cancer_df has 3 columns", {
  expect_equal(length(smoking_lung_cancer_df), 3)
})

# Test number of rows
test_that("smoking_lung_cancer_df has 2 rows", {
  expect_equal(nrow(smoking_lung_cancer_df), 2)
})

# Test column names
test_that("smoking_lung_cancer_df has expected column names", {
  expected_names <- c("Smoking", "Cancer", "Control")
  expect_equal(names(smoking_lung_cancer_df), expected_names)
})

# Test column types
test_that("smoking_lung_cancer_df columns have correct types", {
  expect_type(smoking_lung_cancer_df$Cancer, "integer")
  expect_type(smoking_lung_cancer_df$Control, "integer")
  expect_s3_class(smoking_lung_cancer_df$Smoking, "factor")
})

# Test immutability
test_that("smoking_lung_cancer_df remains unchanged after tests", {
  original_names <- names(smoking_lung_cancer_df)
  original_dim <- dim(smoking_lung_cancer_df)
  original_types <- sapply(smoking_lung_cancer_df, typeof)

  expect_equal(names(smoking_lung_cancer_df), original_names)
  expect_equal(dim(smoking_lung_cancer_df), original_dim)
  expect_equal(sapply(smoking_lung_cancer_df, typeof), original_types)
})
