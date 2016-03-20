#' Split dataframe in list of dataframes according to specific column.
#'
#' @param df Dataframe to split
#' @param col Character of the column to split by
#' @return List of dataframes
#' @export
#' @examples
#' ssb_ices <- read.csv(system.file("extdata", "ssa-ices-combinded.csv", package = "advancedr"))
#' split_data(ssb_ices, col = "species")

split_data <- function(df, col) {
  col_uni <- unique(df[, col])
  result <- vector("list", length = length(col_uni))
  for (i in seq_along(col_uni)) {
    result[[i]] <- df[df[, col] == col_uni[i], ]
  }
  return(result)
}

