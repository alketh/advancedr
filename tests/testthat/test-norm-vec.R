context("test norm_vec")

data <- read.csv(system.file("extdata", "ssa-ices-combinded.csv", package = "advancedr"))


test_that("test result of normalisation", {
  expect_equal(min(norm_vec(data, col = "ssb")$ssb), 0)
  expect_equal(max(norm_vec(data, col = "ssb")$ssb), 1)
  expect_equal(dim(norm_vec(data, col = "ssb")), dim (data))
  expect_error(norm_vec(data, col = "species"), "Input is not numeric!")
})
