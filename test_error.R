context("Error message if both a = b = 0")
library(straightline)

test_that("a, b both cannot be zero", {
  expect_error(straighten(0, 0, 3), "a and b both cannot be zero")
})




