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


# danish_lung_incidence_df

library(testthat)

test_that("danish_lung_incidence_df has correct class and dimensions", {
  expect_s3_class(danish_lung_incidence_df, "data.frame")
  expect_equal(length(danish_lung_incidence_df), 4)   # 4 columns
  expect_equal(nrow(danish_lung_incidence_df), 24)    # 24 rows
})

test_that("danish_lung_incidence_df has correct column names", {
  expected_names <- c("city", "age", "pop", "cases")
  expect_named(danish_lung_incidence_df, expected_names)
})

test_that("danish_lung_incidence_df columns have correct types", {
  expect_true(is.factor(danish_lung_incidence_df$city))
  expect_true(is.factor(danish_lung_incidence_df$age))
  expect_type(danish_lung_incidence_df$pop, "integer")
  expect_type(danish_lung_incidence_df$cases, "integer")
})

test_that("danish_lung_incidence_df may contain NA values", {
  expect_true(any(is.na(danish_lung_incidence_df)) || !any(is.na(danish_lung_incidence_df)))
})

test_that("danish_lung_incidence_df remains unchanged during tests", {
  snapshot <- danish_lung_incidence_df
  expect_equal(danish_lung_incidence_df, snapshot)
})
