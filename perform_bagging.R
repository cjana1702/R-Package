#Bagging Implementation


perform_bagging <- function(y, X, R = 100) {
  n <- nrow(X)
  predictions <- matrix(NA, nrow = n, ncol = R)
  
  for (r in 1:R) {
    sample_indices <- sample(1:n, replace = TRUE)
    sample_X <- X[sample_indices, ]
    sample_y <- y[sample_indices]
    model <- lm(sample_y ~ sample_X)
    predictions[, r] <- predict(model, X)
  }
  
  final_predictions <- rowMeans(predictions)
  return(final_predictions)
}
