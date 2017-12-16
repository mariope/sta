#' Retrieve Barron's COT weekly data.
#'
#' \code{check_season} returns a data.frame with the traders open position.
#' @name getBarronsCOT
#' @description Retrieve Barron's Commitment of Traders and store data
#' @author Mario Pisa
#' @return data.frame with Barron's COT table
#' @examples
#' \dontrun{check_season()}
#' @seealso \url{}
#' @export
"check_season" <- function(x, season_from, season_to) {
   x$season <- 0
   years <- unique(year(index(x)))
   if (year(season_from) == year(season_to)) {
      for (y in years) {
         from_s <- paste0(y, "-", format(season_from, "%m-%d"))
         from_t <- paste0(y, "-", format(season_to, "%m-%d"))
         x$season[as.Date(index(x)) >= from_s & as.Date(index(x)) <= from_t] <- 1
      }
   }
   else {
      for (y in years) {
         from_s <- paste0(y, "-", format(season_from, "%m-%d"))
         from_t <- paste0(y + 1, "-", format(season_to, "%m-%d"))
         x$season[as.Date(index(x)) >= from_s & as.Date(index(x)) <= from_t] <- 1
      }
   }
   return(x$season)
}
