#' Describe your dataset
#'
#' After your data is in memory, use this tool to create a
#' description file. After creation the file is easy to edit for you.
#' @param df your data frame
#' @export
describe_data <- function(df) {
        knitr::knit("R/testtemplate.Rmd", output = "datadescription.Rmd")
        file.show("datadescription.Rmd")
}
# in aparte environmetn doen?
# of weg schrijven naar file en dan die weer openen in rmarkdown
# en dan opject weghalen.
