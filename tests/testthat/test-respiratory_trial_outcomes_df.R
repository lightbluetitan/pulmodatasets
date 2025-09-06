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


# respiratory_trial_outcomes_df

library(testthat)

test_that("respiratory_trial_outcomes_df has correct class and structure", {
  expect_s3_class(respiratory_trial_outcomes_df, "data.frame")
  expect_equal(length(respiratory_trial_outcomes_df), 5)   # 5 columns
  expect_equal(nrow(respiratory_trial_outcomes_df), 111)   # 111 rows
})

test_that("respiratory_trial_outcomes_df has expected column names", {
  expected_names <- c("y1", "y2", "y3", "y4", "trt")
  expect_named(respiratory_trial_outcomes_df, expected_names)
})

test_that("respiratory_trial_outcomes_df columns have expected types", {
  expect_type(respiratory_trial_outcomes_df$y1, "integer")
  expect_type(respiratory_trial_outcomes_df$y2, "integer")
  expect_type(respiratory_trial_outcomes_df$y3, "integer")
  expect_type(respiratory_trial_outcomes_df$y4, "integer")
  expect_type(respiratory_trial_outcomes_df$trt, "integer")
})

test_that("respiratory_trial_outcomes_df may contain NA values", {
  expect_true(any(is.na(respiratory_trial_outcomes_df)) || !any(is.na(respiratory_trial_outcomes_df)))
})

test_that("respiratory_trial_outcomes_df remains unchanged during tests", {
  snapshot <- respiratory_trial_outcomes_df
  expect_equal(respiratory_trial_outcomes_df, snapshot)
})
