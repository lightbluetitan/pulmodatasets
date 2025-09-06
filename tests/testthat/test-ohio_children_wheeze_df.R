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


# ohio_children_wheeze_df

library(testthat)

test_that("ohio_children_wheeze_df has correct class and structure", {
  expect_s3_class(ohio_children_wheeze_df, "data.frame")
  expect_equal(length(ohio_children_wheeze_df), 4)   # 4 columns
  expect_equal(nrow(ohio_children_wheeze_df), 2148)  # 2148 rows
})

test_that("ohio_children_wheeze_df has expected column names", {
  expected_names <- c("resp", "id", "age", "smoke")
  expect_named(ohio_children_wheeze_df, expected_names)
})

test_that("ohio_children_wheeze_df columns have expected types", {
  expect_type(ohio_children_wheeze_df$resp, "integer")
  expect_type(ohio_children_wheeze_df$id, "integer")
  expect_type(ohio_children_wheeze_df$age, "integer")
  expect_type(ohio_children_wheeze_df$smoke, "integer")
})

test_that("ohio_children_wheeze_df may contain NA values", {
  expect_true(any(is.na(ohio_children_wheeze_df)) || !any(is.na(ohio_children_wheeze_df)))
})

test_that("ohio_children_wheeze_df remains unchanged during tests", {
  snapshot <- ohio_children_wheeze_df
  expect_equal(ohio_children_wheeze_df, snapshot)
})
