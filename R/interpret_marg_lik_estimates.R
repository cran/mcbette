#' Interpret the marginal likelihood estimates
#'
#' Interpret the marginal likelihood estimates
#' as created by \link{est_marg_liks}.
#'
#' @inheritParams default_params_doc
#' @return Nothing. This function shows the interpretation
#' via \link{message}.
#' @author Richèl J.C. Bilderbeek
#' @export
interpret_marg_lik_estimates <- function(marg_liks) {
  df <- marg_liks
  # Show all models
  message(" ", sep = "\n")
  message("**********************************", sep = "\n")
  message("* All models (ordered by index)  *", sep = "\n")
  message("**********************************", sep = "\n")
  message(" ", sep = "\n")
  message(knitr::kable(df), sep = "\n")

  ##############################################################################
  # Create an ordered data frame
  ##############################################################################
  # Keep rows without an NA
  df_ordered <- stats::na.omit(df)

  # Order from high to low
  df_ordered <- df_ordered[order(-df_ordered$weight), ]

  # Show most convincing first
  message(" ", sep = "\n")
  message("**********************************", sep = "\n")
  message("* All models (ordered by weight) *", sep = "\n")
  message("**********************************", sep = "\n")
  message(" ", sep = "\n")
  message(knitr::kable(df_ordered), sep = "\n")

  # Show weights
  message(" ", sep = "\n")
  txtplot::txtplot(x = seq(1, length(df_ordered$weight)), y = df_ordered$weight)

  ##############################################################################
  # Create a best model data frame
  ##############################################################################
  # Show the best model
  best_row_index <- which(
    df_ordered$marg_log_lik == max(df_ordered$marg_log_lik)
  )
  df_best <- df_ordered[best_row_index, ]
  message(" ", sep = "\n")
  message("**********************************", sep = "\n")
  message("* Best model:                    *", sep = "\n")
  message("**********************************", sep = "\n")
  message(" ", sep = "\n")
  message(knitr::kable(df_best, row.names = FALSE), sep = "\n")
  invisible(marg_liks)
}
