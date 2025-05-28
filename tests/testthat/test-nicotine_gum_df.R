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

# nicotine_gum_df

library(testthat)

# Test structure and class
test_that("nicotine_gum_df is a data frame with correct structure", {
  expect_s3_class(nicotine_gum_df, "data.frame")
  expect_equal(ncol(nicotine_gum_df), 4)
  expect_equal(length(nicotine_gum_df), 4)
  expect_equal(nrow(nicotine_gum_df), 26)
})

# Test column names
test_that("nicotine_gum_df has expected column names", {
  expected_names <- c("qt", "tt", "qc", "tc")
  expect_named(nicotine_gum_df, expected_names)
})

# Test variable types
test_that("nicotine_gum_df columns have correct data types", {
  expect_type(nicotine_gum_df$qt, "integer")
  expect_type(nicotine_gum_df$tt, "integer")
  expect_type(nicotine_gum_df$qc, "integer")
  expect_type(nicotine_gum_df$tc, "integer")
})
