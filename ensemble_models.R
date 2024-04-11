#Ensemble Learning
ensemble_models <- function(models, X) {
  predictions <- sapply(models, function(model) predict(model, newdata = X))
  final_prediction <- rowMeans(predictions)
  return(final_prediction)
}
