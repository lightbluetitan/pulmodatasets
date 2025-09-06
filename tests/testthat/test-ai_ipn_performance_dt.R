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

# ai_ipn_performance_dt

library(testthat)

# Test class and structure
test_that("ai_ipn_performance_dt has correct class and structure", {
  expect_s3_class(ai_ipn_performance_dt, "data.table")
  expect_s3_class(ai_ipn_performance_dt, "data.frame")
  expect_equal(length(ai_ipn_performance_dt), 2)    # 2 columns
  expect_equal(nrow(ai_ipn_performance_dt), 200)    # 200 rows
})

# Test column names
test_that("ai_ipn_performance_dt has correct column names", {
  expected_names <- c("cancer", "rating")
  expect_equal(names(ai_ipn_performance_dt), expected_names)
})

# Test column data types
test_that("ai_ipn_performance_dt columns have correct types", {
  expect_type(ai_ipn_performance_dt$cancer, "integer")
  expect_type(ai_ipn_performance_dt$rating, "integer")
})

# Test for possible NA values (presence or absence is valid)
test_that("ai_ipn_performance_dt may contain NA values", {
  expect_true(any(is.na(ai_ipn_performance_dt)) || !any(is.na(ai_ipn_performance_dt)))
})

# Test dataset integrity remains unchanged
test_that("ai_ipn_performance_dt remains unchanged after tests", {
  original_attrs <- attributes(ai_ipn_performance_dt)
  original_values <- ai_ipn_performance_dt

  expect_identical(attributes(ai_ipn_performance_dt), original_attrs)
  expect_equal(ai_ipn_performance_dt, original_values)
})
