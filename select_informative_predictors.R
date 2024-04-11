#Pre-Screening for Informative Predictors

select_informative_predictors <- function(X, y, K) {
  corrs <- apply(X, 2, function(x) abs(cor(x, y)))
  selected <- head(order(corrs, decreasing = TRUE), K)
  return(selected)
}
