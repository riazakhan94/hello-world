context("Class of function straighten")
library(straightline)


myline <- straighten(pi, exp(1), log(7))

test_that("Class of the function return is stline", {
  expect_equal(class(myline), "stline")
})


# direct access
test_that("Class of the function return is stline", {
  expect_equal(class(straighten(1,1,0)), "stline")
  expect_equal(class(straighten(2,15,7)), "stline")
  expect_equal(class(straighten(0,1,5)), "stline")
})





