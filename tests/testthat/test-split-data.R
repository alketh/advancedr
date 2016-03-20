context("test split_data")

data <- read.csv(system.file("extdata", "ssa-ices-combinded.csv", package = "advancedr"))

test_that("test result of split procedure", {
  expect_equal(length(split_data(data, col = "species")), 6)
  # Test if each listentry has only one species as entry!
  expect_equal(unique(sapply(split_data(data, col = "species"), function(x) length(unique(x$species)))), 1)
  expect_is(split_data(data, col = "species"), "list")
})
