#' DV Hydrograph Report
#' 
#' @param data Local data (as list), or URL.
#' @param ... Additional parameters passed to GET or \code{authenticateUser}.
#' @rdname dvhydrograph
#' @importFrom rmarkdown render
#' @examples
#' library(gsplot)
#' library(jsonlite)
#' library(lubridate)
#' library(dplyr)
#' Sys.setenv(TZ = "UTC")
#' reportObject <- fromJSON(system.file('extdata','testsnippets', 'test-dvhydrograph.json', 
#'                                      package = 'repgen'))[['allStats']]
#' dvhydrograph(reportObject, 'Author Name')
#' @rdname dvhydrograph
#' @export
setGeneric(name="dvhydrograph",def=function(data, ...){standardGeneric("dvhydrograph")})

#'@aliases dvhydrograph
#'@rdname dvhydrograph
setMethod("dvhydrograph", signature = c("list"), 
          definition = function(data, ...) {
            author <- list(...)
            return(startRender(data, author, 'dvhydrograph'))
          }
)