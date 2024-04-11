#' Fit Ridge, Lasso, or Elastic Net Model
#'
#' This function fits a model using Ridge regression, Lasso regression, or Elastic Net regularization, 
#' depending on the values of the `alpha` and `lambda` parameters. It uses the `glmnet` package
#' for fitting the model. Alpha = 0 corresponds to ridge regression, alpha = 1 to lasso regression,
#' and any value in between corresponds to elastic net regularization.
#'
#' @param y Vector of outcomes.
#' @param X Matrix or data frame of predictor variables.
#' @param alpha Elasticity parameter determining the type of model. 
#' Alpha = 0 corresponds to ridge regression, alpha = 1 to lasso regression, 
#' and any value in between (0 < alpha < 1) corresponds to elastic net. Default is 1.
#' @param lambda Regularization parameter controlling the strength of the penalty. 
#' The default is 1e-4.
#'
#' @return An object of class "glmnet" that contains the fitted model.
#'
#' @examples
#' y <- rnorm(100)
#' X <- matrix(rnorm(200), ncol=2)
#' model <- fit_ridge_lasso_elastic_net(y, X, alpha = 0.5, lambda = 0.01)
#'
#' @export
#' @importFrom glmnet glmnet
library(glmnet)

fit_ridge_lasso_elastic_net <- function(y, X, alpha = 1, lambda = 1e-4) {
  # alpha = 0: ridge, alpha = 1: lasso, 0 < alpha < 1: elastic net
  model <- glmnet(x = as.matrix(X), y = y, alpha = alpha, lambda = lambda)
  return(model)
}
