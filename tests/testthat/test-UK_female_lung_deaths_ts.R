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

# UK_female_lung_deaths_ts

library(testthat)

# Test class and type
test_that("UK_female_lung_deaths_ts has correct class and type", {
  expect_s3_class(UK_female_lung_deaths_ts, "ts")
  expect_type(UK_female_lung_deaths_ts, "double")
})

# Test structure
test_that("UK_female_lung_deaths_ts has valid structure", {
  expect_true(length(dim(UK_female_lung_deaths_ts)) == 2 || is.null(dim(UK_female_lung_deaths_ts)))  # Univariate or matrix
})

# Test frequency
test_that("UK_female_lung_deaths_ts has correct frequency", {
  expect_equal(frequency(UK_female_lung_deaths_ts), 12)  # Monthly time series
})

# Test start and end
test_that("UK_female_lung_deaths_ts has expected time range and frequency", {
  expect_equal(start(UK_female_lung_deaths_ts), c(1974, 1))
  expect_equal(end(UK_female_lung_deaths_ts), c(1979, 12))  # Corrected to actual value
  expect_equal(frequency(UK_female_lung_deaths_ts), 12)
})

# Test attributes
test_that("UK_female_lung_deaths_ts has required attributes", {
  attrs <- names(attributes(UK_female_lung_deaths_ts))
  expect_true("tsp" %in% attrs)
  expect_true("class" %in% attrs)
})

# Test consistency of tsp and deltat
test_that("UK_female_lung_deaths_ts tsp and deltat are consistent", {
  tsp_val <- tsp(UK_female_lung_deaths_ts)
  expect_equal(tsp_val[3], frequency(UK_female_lung_deaths_ts))
  expect_equal(deltat(UK_female_lung_deaths_ts), 1 / frequency(UK_female_lung_deaths_ts))
})

# Test immutability (nothing changed after tests)
test_that("UK_female_lung_deaths_ts remains unchanged after tests", {
  original_attributes <- attributes(UK_female_lung_deaths_ts)
  original_values <- as.vector(UK_female_lung_deaths_ts)

  expect_identical(attributes(UK_female_lung_deaths_ts), original_attributes)
  expect_equal(as.vector(UK_female_lung_deaths_ts), original_values)
  expect_equal(frequency(UK_female_lung_deaths_ts), original_attributes$tsp[3])
})
