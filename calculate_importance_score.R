#Variable Importance Score
calculate_importance_score <- function(models) {
  # Dummy implementation; actual implementationdepends on the models' structure
  importance_scores <- rep(0, ncol(models[[1]]$coefficients))
  names(importance_scores) <- names(models[[1]]$coefficients)
  
  for (model in models) {
    selected_vars <- names(model$coefficients)
    importance_scores[selected_vars] <- importance_scores[selected_vars] + 1
  }
  
  return(importance_scores)
}



calculate_importance_score()