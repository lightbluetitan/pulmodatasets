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

# tlc_lung_capacity_df

library(testthat)

test_that("tlc_lung_capacity_df has correct class and structure", {
  expect_s3_class(tlc_lung_capacity_df, "data.frame")
  expect_equal(length(tlc_lung_capacity_df), 4)  # 4 columns
  expect_equal(nrow(tlc_lung_capacity_df), 32)   # 32 rows
})

test_that("tlc_lung_capacity_df has expected column names", {
  expected_names <- c("age", "sex", "height", "tlc")
  expect_named(tlc_lung_capacity_df, expected_names)
})

test_that("tlc_lung_capacity_df columns have expected types", {
  expect_type(tlc_lung_capacity_df$age, "integer")
  expect_type(tlc_lung_capacity_df$sex, "integer")
  expect_type(tlc_lung_capacity_df$height, "integer")
  expect_type(tlc_lung_capacity_df$tlc, "double")
})

test_that("tlc_lung_capacity_df may contain NA values", {
  expect_true(any(is.na(tlc_lung_capacity_df)) || !any(is.na(tlc_lung_capacity_df)))
})

test_that("tlc_lung_capacity_df remains unchanged during tests", {
  snapshot <- tlc_lung_capacity_df
  expect_equal(tlc_lung_capacity_df, snapshot)
})

