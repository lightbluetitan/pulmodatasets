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

# bronchitis_Cardiff_df

library(testthat)

# Test structure of the data frame
test_that("bronchitis_Cardiff_df is a valid data frame with correct structure", {
  expect_s3_class(bronchitis_Cardiff_df, "data.frame")
  expect_equal(length(bronchitis_Cardiff_df), 4)
  expect_equal(ncol(bronchitis_Cardiff_df), 4)
  expect_equal(nrow(bronchitis_Cardiff_df), 212)
})

# Test column names
test_that("bronchitis_Cardiff_df has expected column names", {
  expected_names <- c("cig", "poll", "r", "rfac")
  expect_named(bronchitis_Cardiff_df, expected_names)
})

# Test variable types
test_that("bronchitis_Cardiff_df columns have correct data types", {
  expect_type(bronchitis_Cardiff_df$cig, "double")
  expect_type(bronchitis_Cardiff_df$poll, "double")
  expect_type(bronchitis_Cardiff_df$r, "integer")
  expect_s3_class(bronchitis_Cardiff_df$rfac, "factor")
  expect_equal(nlevels(bronchitis_Cardiff_df$rfac), 2)
})
