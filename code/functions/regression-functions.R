residual_sum_squares <- function(input) {
  rss <- sum((input$residuals)^2)
  return(rss)
}

total_sum_squares <- function(input) {
  mean.input <- mean(input$model[[1]])
  tss <- sum((input$model[[1]] - mean.input)^2)
  return(tss)
}

r_squared <- function(input) {
  r_square <- 1 - (residual_sum_squares(input) / total_sum_squares(input))
  return(r_square)
}

f_statistic <- function(input) {
  p <- input$rank -1
  n <- length(input$residuals)
  f.stat <- (total_sum_squares(input) - residual_sum_squares(input)) * (n-p-1) / (p*(residual_sum_squares(input)))
  return(f.stat)
}

residual_std_error <- function(input) {
  p <- input$rank -1
  n <- length(input$residuals)
  rse <- sqrt(residual_sum_squares(input)/(n-p-1))
  return(rse)
}