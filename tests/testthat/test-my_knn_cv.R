test_that("my_knn_cv works mathematically", {
  penguins_data <- na.omit(my_penguins)
  train <- penguins_data[, 3:6]
  cl <- penguins_data$species
  check_knn <- my_knn_cv(train, cl, 5, 5)

  expect_type(check_knn, "list")
  expect_is(check_knn[[1]], "factor")
  expect_type(check_knn[[2]], "double")
})

test_that("improper train and cl input throws error", {
  expect_error(my_knn_cv(1:10, 1, 5, 5))
})

test_that("k_nn parameter smaller than 1 or non-numeric throws error", {
  expect_error(my_knn_cv(train, cl, 0, 5))
  expect_error(my_knn_cv(train, cl, "a string", 5))
})

test_that("k_cv parameter smaller than 2 or non-numeric throws error", {
  expect_error(my_knn_cv(train, cl, 5, 1))
  expect_error(my_knn_cv(train, cl, 5, "a string"))
})
