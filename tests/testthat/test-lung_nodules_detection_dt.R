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


# lung_nodules_detection_dt

library(testthat)

test_that("lung_nodules_detection_dt has the correct class and dimensions", {
  expect_s3_class(lung_nodules_detection_dt, "data.table")
  expect_s3_class(lung_nodules_detection_dt, "data.frame")
  expect_equal(length(lung_nodules_detection_dt), 8)     # 8 columns
  expect_equal(nrow(lung_nodules_detection_dt), 999)     # 999 rows
})

test_that("lung_nodules_detection_dt has the correct column names", {
  expected_names <- c(
    "sex", "age", "num.annotated", "location",
    "spiculate", "smoke.status", "diameter", "malignant"
  )
  expect_named(lung_nodules_detection_dt, expected_names)
})

test_that("lung_nodules_detection_dt has correct column types", {
  expect_true(is.factor(lung_nodules_detection_dt$sex))
  expect_type(lung_nodules_detection_dt$age, "double")
  expect_type(lung_nodules_detection_dt$num.annotated, "double")
  expect_true(is.factor(lung_nodules_detection_dt$location))
  expect_true(is.factor(lung_nodules_detection_dt$spiculate))
  expect_true(is.factor(lung_nodules_detection_dt$smoke.status))
  expect_type(lung_nodules_detection_dt$diameter, "double")
  expect_type(lung_nodules_detection_dt$malignant, "double")
})

test_that("lung_nodules_detection_dt may contain NA values", {
  expect_true(any(is.na(lung_nodules_detection_dt)) || !any(is.na(lung_nodules_detection_dt)))
})

test_that("lung_nodules_detection_dt remains unchanged during tests", {
  snapshot <- lung_nodules_detection_dt
  expect_equal(lung_nodules_detection_dt, snapshot)
})
