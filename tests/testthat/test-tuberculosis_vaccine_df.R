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


# tuberculosis_vaccine_df

library(testthat)

# Test dataset structure and class
test_that("tuberculosis_vaccine_df has correct structure", {
  expect_s3_class(tuberculosis_vaccine_df, "data.frame")
  expect_equal(length(tuberculosis_vaccine_df), 9)
  expect_equal(names(tuberculosis_vaccine_df),
               c("trial", "author", "year", "tpos", "tneg", "cpos", "cneg", "ablat", "alloc"))
})

# Test data types of columns
test_that("tuberculosis_vaccine_df has correct column types", {
  expect_type(tuberculosis_vaccine_df$trial, "integer")
  expect_type(tuberculosis_vaccine_df$author, "character")
  expect_type(tuberculosis_vaccine_df$year, "integer")
  expect_type(tuberculosis_vaccine_df$tpos, "integer")
  expect_type(tuberculosis_vaccine_df$tneg, "integer")
  expect_type(tuberculosis_vaccine_df$cpos, "integer")
  expect_type(tuberculosis_vaccine_df$cneg, "integer")
  expect_type(tuberculosis_vaccine_df$ablat, "integer")
  expect_type(tuberculosis_vaccine_df$alloc, "character")
})

# Test for reasonable value ranges
test_that("tuberculosis_vaccine_df has valid numeric ranges", {
  expect_true(all(tuberculosis_vaccine_df$trial > 0 | is.na(tuberculosis_vaccine_df$trial)))
  expect_true(all(tuberculosis_vaccine_df$year >= 1900 | is.na(tuberculosis_vaccine_df$year)))
  expect_true(all(tuberculosis_vaccine_df$tpos >= 0 | is.na(tuberculosis_vaccine_df$tpos)))
  expect_true(all(tuberculosis_vaccine_df$tneg >= 0 | is.na(tuberculosis_vaccine_df$tneg)))
  expect_true(all(tuberculosis_vaccine_df$cpos >= 0 | is.na(tuberculosis_vaccine_df$cpos)))
  expect_true(all(tuberculosis_vaccine_df$cneg >= 0 | is.na(tuberculosis_vaccine_df$cneg)))
  expect_true(all(tuberculosis_vaccine_df$ablat >= 0 | is.na(tuberculosis_vaccine_df$ablat)))
})

# Test dataset immutability
test_that("tuberculosis_vaccine_df remains unchanged", {
  original_data <- tuberculosis_vaccine_df
  original_hash <- paste0(capture.output(str(tuberculosis_vaccine_df)), collapse = "")

  # Perform read-only operations
  head(tuberculosis_vaccine_df)
  summary(tuberculosis_vaccine_df)

  expect_identical(tuberculosis_vaccine_df, original_data)
  expect_identical(paste0(capture.output(str(tuberculosis_vaccine_df)), collapse = ""), original_hash)
})
