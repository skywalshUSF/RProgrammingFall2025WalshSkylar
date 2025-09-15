# This function takes assignment2 as an argument and returns the mean

# Here is a corrected version of "myMean" that correctly returns the mean of "assignment2"

# The corrected function

#' myMean()
#'
#' @param assignment2 numeric vector
#'
#' @returns numeric mean
#' @export
#'
#' @examples
#' assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
#' myMean(assignment2)
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}
