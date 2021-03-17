test_that("my_rf_cv works mathematically", {
  check_rf <- my_rf_cv(5)
  expect_type(check_rf, "double")
})

test_that("k parameter smaller than 2 or non-numeric throws error", {
  expect_error(my_rf_cv(1))
  expect_error(my_rf_cv("a string"))
})
