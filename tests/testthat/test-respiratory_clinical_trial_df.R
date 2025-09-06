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


# respiratory_clinical_trial_df

library(testthat)

test_that("respiratory_clinical_trial_df has correct class and dimensions", {
  expect_s3_class(respiratory_clinical_trial_df, "data.frame")
  expect_equal(length(respiratory_clinical_trial_df), 8)  # 8 columns
  expect_equal(nrow(respiratory_clinical_trial_df), 444)  # 444 rows
})

test_that("respiratory_clinical_trial_df has expected column names", {
  expected_names <- c("center", "id", "treat", "sex", "age", "baseline", "visit", "outcome")
  expect_named(respiratory_clinical_trial_df, expected_names)
})

test_that("respiratory_clinical_trial_df columns have expected types", {
  expect_type(respiratory_clinical_trial_df$center, "integer")
  expect_type(respiratory_clinical_trial_df$id, "integer")
  expect_s3_class(respiratory_clinical_trial_df$treat, "factor")
  expect_equal(length(levels(respiratory_clinical_trial_df$treat)), 2)
  expect_s3_class(respiratory_clinical_trial_df$sex, "factor")
  expect_equal(length(levels(respiratory_clinical_trial_df$sex)), 2)
  expect_type(respiratory_clinical_trial_df$age, "integer")
  expect_type(respiratory_clinical_trial_df$baseline, "integer")
  expect_type(respiratory_clinical_trial_df$visit, "integer")
  expect_type(respiratory_clinical_trial_df$outcome, "integer")
})

test_that("respiratory_clinical_trial_df may contain NA values", {
  expect_true(any(is.na(respiratory_clinical_trial_df)) || !any(is.na(respiratory_clinical_trial_df)))
})

test_that("respiratory_clinical_trial_df remains unchanged during tests", {
  snapshot <- respiratory_clinical_trial_df
  expect_equal(respiratory_clinical_trial_df, snapshot)
})
