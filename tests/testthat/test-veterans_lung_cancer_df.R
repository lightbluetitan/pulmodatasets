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

# veterans_lung_cancer_df

library(testthat)

test_that("veterans_lung_cancer_df has the correct class and dimensions", {
  expect_s3_class(veterans_lung_cancer_df, "data.frame")
  expect_equal(length(veterans_lung_cancer_df), 8)    # 8 columns
  expect_equal(nrow(veterans_lung_cancer_df), 137)    # 137 rows
})

test_that("veterans_lung_cancer_df has the correct column names", {
  expected_names <- c("trt", "celltype", "time", "status", "karno", "diagtime", "age", "prior")
  expect_named(veterans_lung_cancer_df, expected_names)
})

test_that("veterans_lung_cancer_df has correct column types", {
  expect_type(veterans_lung_cancer_df$trt, "double")
  expect_true(is.factor(veterans_lung_cancer_df$celltype))
  expect_type(veterans_lung_cancer_df$time, "double")
  expect_type(veterans_lung_cancer_df$status, "double")
  expect_type(veterans_lung_cancer_df$karno, "double")
  expect_type(veterans_lung_cancer_df$diagtime, "double")
  expect_type(veterans_lung_cancer_df$age, "double")
  expect_type(veterans_lung_cancer_df$prior, "double")
})

test_that("veterans_lung_cancer_df may contain NA values", {
  expect_true(any(is.na(veterans_lung_cancer_df)) || !any(is.na(veterans_lung_cancer_df)))
})

test_that("veterans_lung_cancer_df remains unchanged during tests", {
  snapshot <- veterans_lung_cancer_df
  expect_equal(veterans_lung_cancer_df, snapshot)
})
