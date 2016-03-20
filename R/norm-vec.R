#' Normalise vector with (x - min) / (max- min).
#'
#' @param df Dataframe with column to normalise
#' @param col Character giving the name of the column to normalise
#' @return Dataframe with the normalised column
#' @export
#' @examples
#' ssb_ices <- read.csv(system.file("extdata", "ssa-ices-combinded.csv", package = "advancedr"))
#' ssb_ices$ssb_norm <- norm_vec(ssb_ices, "ssb")

norm_vec <- function(df, col) {
  vec <- df[, col]
  if (is.numeric(vec) || is.integer(vec)) {
    min_vec <- min(vec)
    max_vec <- max(vec)
    vec <- (vec - min_vec) / (max_vec - min_vec)
    df[, col] <- vec
    return(df)
  } else {
    stop("Input is not numeric!")
  }
}
