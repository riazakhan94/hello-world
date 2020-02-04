context("Angle of a straight line")
library(straightline)

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




