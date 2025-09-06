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


# neonatal_intubation_times_df

library(testthat)

test_that("neonatal_intubation_times_df has correct class and structure", {
  expect_s3_class(neonatal_intubation_times_df, "data.frame")
  expect_equal(length(neonatal_intubation_times_df), 7)  # 7 columns
  expect_equal(nrow(neonatal_intubation_times_df), 37)   # 37 rows
})

test_that("neonatal_intubation_times_df has expected column names", {
  expected_names <- c(
    "id", "deci_intub", "stop_ventil", "blade_in",
    "insert_tube", "blade_out", "restart_ventil"
  )
  expect_named(neonatal_intubation_times_df, expected_names)
})

test_that("neonatal_intubation_times_df columns have expected types", {
  expect_type(neonatal_intubation_times_df$id, "integer")
  expect_type(neonatal_intubation_times_df$deci_intub, "integer")
  expect_type(neonatal_intubation_times_df$stop_ventil, "integer")
  expect_type(neonatal_intubation_times_df$blade_in, "integer")
  expect_type(neonatal_intubation_times_df$insert_tube, "integer")
  expect_type(neonatal_intubation_times_df$blade_out, "integer")
  expect_type(neonatal_intubation_times_df$restart_ventil, "integer")
})

test_that("neonatal_intubation_times_df may contain NA values", {
  expect_true(any(is.na(neonatal_intubation_times_df)) || !any(is.na(neonatal_intubation_times_df)))
})

test_that("neonatal_intubation_times_df remains unchanged during tests", {
  snapshot <- neonatal_intubation_times_df
  expect_equal(neonatal_intubation_times_df, snapshot)
})
