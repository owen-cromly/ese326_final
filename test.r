source("functions.r")


# Test the hypothesis testing function
B <- c(100, 101, 102, 103, 104)
A <- c(2, 3, 4, 5, 6)
alpha <- 0.05

hypothesis_test_mus(A, B, alpha)