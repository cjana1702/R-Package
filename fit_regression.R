#Linear regression
fit_regression <- function(y, X, model_type = "linear") {
  formula <- as.formula(paste("y ~", paste(colnames(X), collapse = "+")))
  family <- ifelse(model_type == "linear", gaussian(), binomial())
  model <- glm(formula, family = family, data = data.frame(y = y, X))
  return(model)
}
