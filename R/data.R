#' Disasters Worldwide
#'
#' A dataset containing a comprehensive listing of over 17,000 disasters, natural and otherwise, from around the globe from 1900-2008.
#'    emdat stores dates as 00002008 for a disaster that occurred in the entire year of 2008..such dates were changed to 20080101 YMD
#'    only one function exists, disasters_bycountry()
#' @docType data
#'
#' @usage data(Remdat)
#'    sum(Remdat$Killed,na.rm=T)
#'    sum(as.numeric(Remdat$Cost),na.rm=T)
#'    levels(as.factor(Remdat$Country))
#'    names(Remdat)
#'    library(lubridate)
#'    ymd(Remdat[1,]$Start)
#'    sum(disasters_bycountry("China P Rep")$Killed,na.rm=T)
#'
#' @format A data frame with 17828 rows and 11 variables:
#' \describe{
#'    item{Start}{Start, in YYYYMMDD format}
#'    item{End}{End, in YYYYMMDD format}
#'    item{Country}{Country}
#'    item{Location}{Location}
#'    item{Type}{Type}
#'    item{Sub_Type}{Sub_Type}
#'    item{Name}{Name}
#'    item{Killed}{Killed}
#'    item{Cost}{Cost}
#'    item{Affected}{Affected}
#'    item{Id}{Id}
#' }
#' @source \url{http://www.emdat.be/}
"Remdat"
