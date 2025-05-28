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

# pneumonia_influenza_ts

library(testthat)

# Test object class and structure
test_that("pneumonia_influenza_ts is a time series with correct length and class", {
  expect_s3_class(pneumonia_influenza_ts, "ts")
  expect_equal(length(pneumonia_influenza_ts), 132)
  expect_true(is.ts(pneumonia_influenza_ts))
})

# Test time series properties
test_that("pneumonia_influenza_ts has correct start, end, and frequency", {
  expect_equal(start(pneumonia_influenza_ts), c(1968, 1))
  expect_equal(end(pneumonia_influenza_ts), c(1978, 12))
  expect_equal(frequency(pneumonia_influenza_ts), 12)
})

# Test values within the time series
test_that("pneumonia_influenza_ts values are numeric and non-negative or NA", {
  expect_type(pneumonia_influenza_ts, "double")
  expect_true(all(pneumonia_influenza_ts >= 0 | is.na(pneumonia_influenza_ts)))
})

# Test immutability of the time series
test_that("pneumonia_influenza_ts remains unchanged after inspection", {
  original_data <- pneumonia_influenza_ts
  original_summary <- summary(pneumonia_influenza_ts)

  # Perform non-modifying operations
  window(pneumonia_influenza_ts, start = c(1970, 1), end = c(1970, 12))
  cycle(pneumonia_influenza_ts)
  mean(pneumonia_influenza_ts, na.rm = TRUE)

  expect_identical(pneumonia_influenza_ts, original_data)
  expect_identical(summary(pneumonia_influenza_ts), original_summary)
})
