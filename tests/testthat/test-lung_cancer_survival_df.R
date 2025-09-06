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


# lung_cancer_survival_df

library(testthat)

# Test object class and structure
test_that("lung_cancer_survival_df is a valid data frame with expected structure", {
  expect_s3_class(lung_cancer_survival_df, "data.frame")
  expect_equal(length(lung_cancer_survival_df), 10)
  expect_equal(ncol(lung_cancer_survival_df), 10)
  expect_equal(nrow(lung_cancer_survival_df), 228)
})

# Test variable types
test_that("lung_cancer_survival_df columns have correct types", {
  expect_type(lung_cancer_survival_df$inst, "double")
  expect_type(lung_cancer_survival_df$time, "double")
  expect_type(lung_cancer_survival_df$status, "double")
  expect_type(lung_cancer_survival_df$age, "double")
  expect_type(lung_cancer_survival_df$sex, "double")
  expect_type(lung_cancer_survival_df$ph.ecog, "double")
  expect_type(lung_cancer_survival_df$ph.karno, "double")
  expect_type(lung_cancer_survival_df$pat.karno, "double")
  expect_type(lung_cancer_survival_df$meal.cal, "double")
  expect_type(lung_cancer_survival_df$wt.loss, "double")
})

# Test no unexpected columns
test_that("lung_cancer_survival_df has only expected column names", {
  expected_names <- c(
    "inst", "time", "status", "age", "sex",
    "ph.ecog", "ph.karno", "pat.karno", "meal.cal", "wt.loss"
  )
  expect_named(lung_cancer_survival_df, expected_names)
})

# Test values are numeric or NA (valid values only)
test_that("lung_cancer_survival_df contains only valid numeric or NA values", {
  expect_true(all(sapply(lung_cancer_survival_df, function(x) is.numeric(x) || all(is.na(x)))))
})
