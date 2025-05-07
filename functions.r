confidence_interval_mu <- function(samples, confidence = 0.95) {
  # Calculate the mean and standard error of the mean
  S <- mean(samples)
  se <- sd(samples) / sqrt(length(samples))
  # Calculate the critical value for the given confidence level
  alpha <- 1 - confidence
  critical_value <- qt(1 - alpha / 2, df = length(samples) - 1)
  # Calculate the margin of error
  margin_of_error <- critical_value * se
  # Return the confidence interval
  return(c(S - margin_of_error, S + margin_of_error))
}

hypothesis_test_mus <- function(samplesA, samplesB, alpha = 0.05) {
    # Null Hypothesis: H0: muA <= muB
    # If we reject the null hypothesis, we conclude that muA > muB
    # Sample Size
    nA <- length(samplesA)
    nB <- length(samplesB)
    # Sample Mean
    XA <- mean(samplesA)
    XB <- mean(samplesB)
    # Sample Variance
    SA <- var(samplesA)
    SB <- var(samplesB)
    # find alpha for the t-distribution with degrees of freedom gamma and critical value where muA - muB = 0
    gamma <- (SA/nA + SB/nB)^2 / ((SA/nA)^2/(nA-1) + (SB/nB)^2/(nB-1))
    critical_value <- (XA-XB) / sqrt((SA/nA) + (SB/nB))
    alpha_t <- pt(critical_value, df = gamma, lower.tail = FALSE)
    print(paste("Critical value:", critical_value))
    print(paste("Alpha:", alpha_t))
    print(paste("Alpha level:", alpha))
    if (alpha_t < alpha) {
        print("Reject the null hypothesis")
    } else {
        print("Fail to reject the null hypothesis")
    }
}