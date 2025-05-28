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

# respiratory_infections_df

library(testthat)

# Test dataset structure and class
test_that("respiratory_infections_df has correct structure", {
  expect_s3_class(respiratory_infections_df, "data.frame")
  expect_equal(length(respiratory_infections_df), 11)
  expect_equal(names(respiratory_infections_df),
               c("author", "year", "ai", "n1i", "ci", "n2i", "age", "diag.ab", "diag.cb", "diag.pn", "ctrl"))
})

# Test data types of columns
test_that("respiratory_infections_df has correct column types", {
  expect_type(respiratory_infections_df$author, "character")
  expect_type(respiratory_infections_df$year, "integer")
  expect_type(respiratory_infections_df$ai, "integer")
  expect_type(respiratory_infections_df$n1i, "integer")
  expect_type(respiratory_infections_df$ci, "integer")
  expect_type(respiratory_infections_df$n2i, "integer")
  expect_type(respiratory_infections_df$age, "character")
  expect_type(respiratory_infections_df$diag.ab, "integer")
  expect_type(respiratory_infections_df$diag.cb, "integer")
  expect_type(respiratory_infections_df$diag.pn, "integer")
  expect_type(respiratory_infections_df$ctrl, "character")
})

# Test for reasonable value ranges (if applicable to numeric columns)
test_that("respiratory_infections_df has valid numeric ranges", {
  expect_true(all(respiratory_infections_df$year >= 1900 | is.na(respiratory_infections_df$year)))
  expect_true(all(respiratory_infections_df$ai >= 0 | is.na(respiratory_infections_df$ai)))
  expect_true(all(respiratory_infections_df$n1i >= 0 | is.na(respiratory_infections_df$n1i)))
  expect_true(all(respiratory_infections_df$ci >= 0 | is.na(respiratory_infections_df$ci)))
  expect_true(all(respiratory_infections_df$n2i >= 0 | is.na(respiratory_infections_df$n2i)))
  expect_true(all(respiratory_infections_df$diag.ab >= 0 | is.na(respiratory_infections_df$diag.ab)))
  expect_true(all(respiratory_infections_df$diag.cb >= 0 | is.na(respiratory_infections_df$diag.cb)))
  expect_true(all(respiratory_infections_df$diag.pn >= 0 | is.na(respiratory_infections_df$diag.pn)))
})

# Test dataset immutability
test_that("respiratory_infections_df remains unchanged", {
  original_data <- respiratory_infections_df
  original_hash <- paste0(capture.output(str(respiratory_infections_df)), collapse = "")

  # Perform read-only operations
  head(respiratory_infections_df)
  summary(respiratory_infections_df)

  expect_identical(respiratory_infections_df, original_data)
  expect_identical(paste0(capture.output(str(respiratory_infections_df)), collapse = ""), original_hash)
})

