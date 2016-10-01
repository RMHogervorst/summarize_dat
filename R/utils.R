## Utils
## a bunch of small functions to make my life a bit easier
##


#' Is a package loaded
#'
#' Find out if a package is loaded.
#' This is useful for swiching between normal plot
#' and ggplot2 for instance.
#'
#' @param pac_name the name of the package
#'
#' @return TRUE or false
#'
#' @examples
#' is_package_loaded("methods")
is_package_loaded <- function(pac_name){
        ## find out if package is loaded.
        ## got this from : https://github.com/gimoya/theBioBucket-Archives/blob/master/R/Functions/instant_pkgs.R
        attached <- search()
        attached_pkgs <- attached[grepl("package", attached)]
        result <- any(grepl(pac_name,attached_pkgs)      )
        result
}
