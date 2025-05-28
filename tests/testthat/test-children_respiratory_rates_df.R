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

# children_respiratory_rates_df


library(testthat)

# Test class
test_that("children_respiratory_rates_df has correct class", {
  expect_s3_class(children_respiratory_rates_df, "data.frame")
})

# Test number of columns
test_that("children_respiratory_rates_df has 2 columns", {
  expect_equal(length(children_respiratory_rates_df), 2)
})

# Test number of rows
test_that("children_respiratory_rates_df has 618 rows", {
  expect_equal(nrow(children_respiratory_rates_df), 618)
})

# Test column names
test_that("children_respiratory_rates_df has expected column names", {
  expected_names <- c("Age", "Rate")
  expect_equal(names(children_respiratory_rates_df), expected_names)
})

# Test column types
test_that("children_respiratory_rates_df columns have correct types", {
  expect_type(children_respiratory_rates_df$Age, "double")
  expect_type(children_respiratory_rates_df$Rate, "integer")
})

# Test immutability
test_that("children_respiratory_rates_df remains unchanged after tests", {
  original_names <- names(children_respiratory_rates_df)
  original_dim <- dim(children_respiratory_rates_df)
  original_types <- sapply(children_respiratory_rates_df, typeof)

  expect_equal(names(children_respiratory_rates_df), original_names)
  expect_equal(dim(children_respiratory_rates_df), original_dim)
  expect_equal(sapply(children_respiratory_rates_df, typeof), original_types)
})
