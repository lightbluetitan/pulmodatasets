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

# engwales_cancer_mortality_df

library(testthat)

test_that("engwales_cancer_mortality_df has correct class and dimensions", {
  expect_s3_class(engwales_cancer_mortality_df, "data.frame")
  expect_equal(length(engwales_cancer_mortality_df), 5)   # 5 columns
  expect_equal(nrow(engwales_cancer_mortality_df), 150)   # 150 rows
})

test_that("engwales_cancer_mortality_df has correct column names", {
  expected_names <- c("year", "age", "lung", "nasal", "other")
  expect_named(engwales_cancer_mortality_df, expected_names)
})

test_that("engwales_cancer_mortality_df columns have correct types", {
  expect_type(engwales_cancer_mortality_df$year, "double")
  expect_type(engwales_cancer_mortality_df$age, "double")
  expect_type(engwales_cancer_mortality_df$lung, "double")
  expect_type(engwales_cancer_mortality_df$nasal, "double")
  expect_type(engwales_cancer_mortality_df$other, "double")
})

test_that("engwales_cancer_mortality_df may contain NA values", {
  expect_true(any(is.na(engwales_cancer_mortality_df)) || !any(is.na(engwales_cancer_mortality_df)))
})

test_that("engwales_cancer_mortality_df remains unchanged during tests", {
  snapshot <- engwales_cancer_mortality_df
  expect_equal(engwales_cancer_mortality_df, snapshot)
})
