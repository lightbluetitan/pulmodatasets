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

# chicago_pollution_df

library(testthat)

# Test class
test_that("chicago_pollution_df has correct class", {
  expect_s3_class(chicago_pollution_df, "data.frame")
})

# Test dimensions
test_that("chicago_pollution_df has correct number of columns", {
  expect_equal(length(chicago_pollution_df), 14)
})

test_that("chicago_pollution_df has correct number of rows", {
  expect_true(nrow(chicago_pollution_df) == 5114)
})

# Test column names
test_that("chicago_pollution_df has expected column names", {
  expected_names <- c("date", "time", "year", "month", "doy", "dow", "death",
                      "cvd", "resp", "temp", "dptp", "rhum", "pm10", "o3")
  expect_equal(names(chicago_pollution_df), expected_names)
})

# Test column types
test_that("chicago_pollution_df columns have correct types", {
  expect_s3_class(chicago_pollution_df$date, "Date")
  expect_type(chicago_pollution_df$time, "integer")
  expect_type(chicago_pollution_df$year, "double")
  expect_type(chicago_pollution_df$month, "double")
  expect_type(chicago_pollution_df$doy, "integer")
  expect_s3_class(chicago_pollution_df$dow, "factor")
  expect_type(chicago_pollution_df$death, "integer")
  expect_type(chicago_pollution_df$cvd, "integer")
  expect_type(chicago_pollution_df$resp, "integer")
  expect_type(chicago_pollution_df$temp, "double")
  expect_type(chicago_pollution_df$dptp, "double")
  expect_type(chicago_pollution_df$rhum, "double")
  expect_type(chicago_pollution_df$pm10, "double")
  expect_type(chicago_pollution_df$o3, "double")
})

# Test immutability
test_that("chicago_pollution_df remains unchanged after tests", {
  original_names <- names(chicago_pollution_df)
  original_dim <- dim(chicago_pollution_df)
  original_types <- sapply(chicago_pollution_df, typeof)

  expect_equal(names(chicago_pollution_df), original_names)
  expect_equal(dim(chicago_pollution_df), original_dim)
  expect_equal(sapply(chicago_pollution_df, typeof), original_types)
})
