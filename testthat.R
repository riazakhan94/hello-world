library(testthat)
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



test_that("Angle of a straight line 45/-45", {
  expect_equal(straighten(1, -1, 0)$angle_x, 45)
  expect_equal(straighten(1, 1, 0)$angle_x, -45)
})



test_that("Angle of a straight line 60/-60", {
  expect_equal(straighten(1, 1/sqrt(3), 0)$angle_x, -60)
  expect_equal(straighten(1, -1/sqrt(3), 0)$angle_x, 60)
})


test_that("Angle of a straight line 30/-30", {
  expect_equal(straighten(1, sqrt(3), 0)$angle_x, -30)
  expect_equal(straighten(1, -sqrt(3), 0)$angle_x, 30)
})


test_that("Angle of a straight line 45/-45", {
  expect_error(straighten(0, 0, 3), "a and b both cannot be zero")
})


test_that("a, b both cannot be zero", {
  expect_error(straighten(0, 0, 3), "a and b both cannot be zero")
})
