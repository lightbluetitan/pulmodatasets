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

# resp_hosp_no2_daily_df

library(testthat)

# Test class
test_that("resp_hosp_no2_daily_df has correct class", {
  expect_s3_class(resp_hosp_no2_daily_df, "data.frame")
})

# Test number of columns
test_that("resp_hosp_no2_daily_df has 7 columns", {
  expect_equal(length(resp_hosp_no2_daily_df), 7)
})

# Test number of rows
test_that("resp_hosp_no2_daily_df has 3652 rows", {
  expect_equal(nrow(resp_hosp_no2_daily_df), 3652)
})

# Test column names
test_that("resp_hosp_no2_daily_df has expected column names", {
  expected_names <- c("date", "t", "year", "dow", "temp", "no2", "hresp")
  expect_equal(names(resp_hosp_no2_daily_df), expected_names)
})

# Test column types
test_that("resp_hosp_no2_daily_df columns have correct types", {
  expect_s3_class(resp_hosp_no2_daily_df$date, "Date")
  expect_type(resp_hosp_no2_daily_df$t, "integer")
  expect_type(resp_hosp_no2_daily_df$year, "double")
  expect_s3_class(resp_hosp_no2_daily_df$dow, "factor")
  expect_type(resp_hosp_no2_daily_df$temp, "double")
  expect_type(resp_hosp_no2_daily_df$no2, "integer")
  expect_type(resp_hosp_no2_daily_df$hresp, "double")
})

# Test dataset integrity (immutability)
test_that("resp_hosp_no2_daily_df remains unchanged", {
  original_names <- names(resp_hosp_no2_daily_df)
  original_dim <- dim(resp_hosp_no2_daily_df)
  original_types <- sapply(resp_hosp_no2_daily_df, typeof)

  expect_equal(names(resp_hosp_no2_daily_df), original_names)
  expect_equal(dim(resp_hosp_no2_daily_df), original_dim)
  expect_equal(sapply(resp_hosp_no2_daily_df, typeof), original_types)
})
