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

# respiratory_trial_df

library(testthat)

# Test structure and class
test_that("respiratory_trial_df is a data frame with correct structure", {
  expect_s3_class(respiratory_trial_df, "data.frame")
  expect_equal(ncol(respiratory_trial_df), 7)
  expect_equal(length(respiratory_trial_df), 7)
  expect_equal(nrow(respiratory_trial_df), 555)
})

# Test column names
test_that("respiratory_trial_df has expected column names", {
  expected_names <- c("centre", "treatment", "gender", "age", "status", "month", "subject")
  expect_named(respiratory_trial_df, expected_names)
})

# Test variable types
test_that("respiratory_trial_df columns have correct data types", {
  expect_s3_class(respiratory_trial_df$centre, "factor")
  expect_s3_class(respiratory_trial_df$treatment, "factor")
  expect_s3_class(respiratory_trial_df$gender, "factor")
  expect_type(respiratory_trial_df$age, "double")
  expect_s3_class(respiratory_trial_df$status, "factor")
  expect_s3_class(respiratory_trial_df$month, "ordered")
  expect_s3_class(respiratory_trial_df$subject, "factor")
})
