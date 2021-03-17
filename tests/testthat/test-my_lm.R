test_that("my_lm works mathematically", {
  data(mtcars)
  check_lm <- my_lm(mpg ~ hp + wt, data = mtcars)
  exp_lm <- lm(mpg ~ hp + wt, data = mtcars)
  expect_type(check_lm, "double")
  expect_equal(check_lm[, 1], exp_lm$coefficients)
  expect_equal(check_lm[, 2], summary(exp_lm)$coefficients[, 2])
  expect_equal(check_lm[, 3], summary(exp_lm)$coefficients[, 3])
  expect_equal(check_lm[, 4], summary(exp_lm)$coefficients[, 4])
})

test_that("non correct formula class input throws error", {
  expect_error(my_lm("a string", data = mtcars))
})

test_that("non-data frame input throws error", {
  expect_error(my_lm(a ~ b, data = "mtcars"))
})
