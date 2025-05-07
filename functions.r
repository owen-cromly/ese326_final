pop_mean_confidence <- function(samples, confidence = 0.95) {
  # Calculate the mean and standard error of the mean
  mean_val <- mean(samples)
  se <- sd(samples) / sqrt(length(samples))
  
  # Calculate the critical value for the given confidence level
  alpha <- 1 - confidence
  critical_value <- qt(1 - alpha / 2, df = length(samples) - 1)
  
  # Calculate the margin of error
  margin_of_error <- critical_value * se
  
  # Return the confidence interval
  return(c(mean_val - margin_of_error, mean_val + margin_of_error))
}

hypothesis_test <- function(samplesA, samplesB, alpha = 0.05) {
    # HYPOTHESIS: POPULATION MEAN OF SAMPLES A IS GREATER THAN POPULATION MEAN OF SAMPLES B
    # Null Hypothesis (H0): muA <= muB
    # Alternative Hypothesis (H1): muA > muB
    # Significance Level: alpha = 0.05
    # Sample Size
    nA <- length(samplesA)
    nB <- length(samplesB)
    
    
}