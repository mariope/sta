#' Check seasonality.
#'
#' \code{check_season} returns a ts, zoo or xts indicating seasonality.
#' @name check_season
#' @description Given a historical series and seasonality it returns a column
#' indicating whether or not each record is in its season.
#' @author Mario Pisa
#' @param x A ts, zoo or xts serie
#' @param season_from String date from initial season. i.e. '2017-06-01'
#' @param season_to String date to end season. i.e. '2017-08-30'
#' @return ts, zoo or xts
#' @examples
#' \dontrun{check_season('SPY', season_from = '2017-01-01', season_to = '2017-03-30')}
#' @seealso \url{}
#' @export
"check_season" <- function(x, season_from, season_to) {
   x$season <- 0
   years <- unique(year(index(x)))
   from <- format(as.Date(season_from), "%m-%d", trim = TRUE)
   to <- format(as.Date(season_to), "%m-%d", trim = TRUE)
   if (year(season_from) == year(season_to)) {
      for (y in years) {
         from_s <- paste0(y, "-", from)
         from_t <- paste0(y, "-", to)
         x$season[as.Date(index(x)) >= from_s & as.Date(index(x)) <= from_t] <- 1
      }
   }
   else {
      for (y in years) {
         from_s <- paste0(y, "-", from)
         from_t <- paste0(y + 1, "-", to)
         x$season[as.Date(index(x)) >= from_s & as.Date(index(x)) <= from_t] <- 1
      }
   }
   return(x)
}
