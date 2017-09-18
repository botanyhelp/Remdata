#' disasters_bycountry function
#'
#' This function allows you to find disasters by Country
#'
#' @param exactcountry Defaults to "Bangladesh"
#' @export
#' @examples
#' disasters_bycountry()

disasters_bycountry <- function(exactcountry="Afghanistan") {
    Remdat[Remdat$Country==exactcountry,]
}
