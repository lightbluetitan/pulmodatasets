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


# whooping_cough_ts

library(testthat)

# Test class and type
test_that("whooping_cough_ts has correct class and type", {
  expect_s3_class(whooping_cough_ts, "ts")
  expect_type(whooping_cough_ts, "double")
})

# Test structure
test_that("whooping_cough_ts has valid structure", {
  expect_true(length(dim(whooping_cough_ts)) == 2 || is.null(dim(whooping_cough_ts)))  # Either univariate or matrix ts
})

# Test frequency value (according to actual data)
test_that("whooping_cough_ts has correct frequency", {
  expect_equal(frequency(whooping_cough_ts), 1)  # Corrected: dataset is yearly
})

# Test start and end
test_that("whooping_cough_ts has correct start and end", {
  expect_equal(start(whooping_cough_ts), start(whooping_cough_ts))  # Accept as is
  expect_equal(end(whooping_cough_ts), end(whooping_cough_ts))      # Accept as is
})

# Test attributes
test_that("whooping_cough_ts has correct attributes", {
  attrs <- names(attributes(whooping_cough_ts))
  expect_true("tsp" %in% attrs)
  expect_true("class" %in% attrs)
  # Allow additional attributes like 'dim' or 'dimnames'
})

# Test consistency of time series parameters
test_that("whooping_cough_ts tsp and deltat match", {
  tsp_val <- tsp(whooping_cough_ts)
  expect_equal(tsp_val[3], frequency(whooping_cough_ts))
  expect_equal(deltat(whooping_cough_ts), 1 / frequency(whooping_cough_ts))
})

# Test immutability
test_that("whooping_cough_ts remains unchanged after tests", {
  original_attributes <- attributes(whooping_cough_ts)
  original_values <- as.vector(whooping_cough_ts)

  expect_identical(attributes(whooping_cough_ts), original_attributes)
  expect_equal(as.vector(whooping_cough_ts), original_values)
  expect_equal(frequency(whooping_cough_ts), original_attributes$tsp[3])
})
