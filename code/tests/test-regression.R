source("../functions/regression-functions.R")
library(testthat)

# test for the residual_sum_squares function
context("Test for the residual_sum_squares function")
test_that("RSS as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2)) 
  expect_type(residual_sum_squares(reg),'double')
  expect_length(residual_sum_squares(reg),1)
})

#test the total_sum_squares function
context("Test for total_sum_squres function")
test_that("TSS as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  y = reg$model[[1]]
  expect_equal(total_sum_squares(reg), sum((y-mean(y))^2)) 
  expect_type(total_sum_squares(reg),'double')
  expect_length(total_sum_squares(reg),1)
})

#test the r_square function
context("Test for r_square function")
test_that ("r square as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_equal(r_squared(reg),reg_sum$r.squared)
  expect_type(r_squared(reg),'double')
  expect_length(r_squared(reg),1)
})

#test the F-statistic function
context("Test for F-statistic function")
test_that ("F-statistic as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_equal(f_statistic(reg), reg_sum$fstatistic[[1]])
  expect_type(f_statistic(reg),'double')
  expect_length(f_statistic(reg), 1)
})

#test the residual_std_error function
context("Test for residual_std_error function")
test_that ("RSE as expected", {
  reg = lm(mpg ~ disp + hp, data = mtcars)
  reg_sum = summary(reg)
  expect_equal(residual_std_error(reg), reg_sum$sigma)
  expect_length(residual_std_error(reg),1)
  expect_type(residual_std_error(reg),'double')
})