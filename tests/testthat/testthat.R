library(testthat)
library(OneSwap)

test_check("oneswap returns correct response", {
  expect_equal(oneswap(c(1,2,3,4,5)), TRUE)
  expect_equal(oneswap(c(2,1,3,4,6,5,7)), FALSE)
  expect_equal(str_length(c(1,2,7,4,5,6,3,8,9)), TRUE)
})
