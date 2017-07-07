#' disasters_bycountry function
#'
#' This function allows you to find disasters by Country
#'
#' @param exactcountry Defaults to "Bangladesh"
#' disasters_bycountry()

disasters_bycountry <- function(exactcountry="Bangladesh") {
    Remdata[Remdata$Country==exactcountry,]
}
