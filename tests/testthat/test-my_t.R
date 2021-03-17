test_that("my_t.test works mathematically", {
  x <- rnorm(10, mean = 0, sd = 1)
  check_t <- my_t.test(x, alternative = "less")
  exp_t <- t.test(x, alternative = "less")
  expect_type(check_t, "list")
  expect_equal(check_t$p_val, exp_t$p.value)
  expect_match(check_t$alternative, "less")

  check_t_1 <- my_t.test(x)
  exp_t_1 <- t.test(x)
  expect_equal(check_t_1$p_val, exp_t_1$p.value)
  expect_match(check_t_1$alternative, "two.sided")

  check_t_2 <- my_t.test(x, alternative = "greater")
  exp_t_2 <- t.test(x, alternative = "greater")
  expect_equal(check_t_2$p_val, exp_t_2$p.value)
  expect_match(check_t_2$alternative, "greater")
})

test_that("non-numeric input throws error", {
  expect_error(my_t.test("a string"))
})

test_that("non-numeric input throws error", {
  expect_error(my_t.test(1:10, mu = "a string"))
})

test_that("illegal String input throws error", {
  expect_error(my_t.test(1:10, alternative = 0))
})
