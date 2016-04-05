#dataset creation
#
# factors
# numbers
# characters
# variables with one value
# multiple missings
#
#
# age in years, length cm, bmi
lengtegewicht<-readr::read_csv2("D:/RmhDocs/Downloads/Lengte,_onder-_en_ov_050416104502.csv",
                                col_names = c("Geslacht", "Leeftijd",
                                              "Cijfersoort", "Perioden",
                                              "Ondergewicht", "Normaalgewicht",
                                              "Overgewicht", "Matigovergewicht",
                                              "Ernstigovergewicht", "cm", "kg"),
                                trim_ws = TRUE, skip = 5, n_max = 70)
library(dplyr)
library(magrittr)
lengtegewicht %<>% select(-Leeftijd, -Cijfersoort, -Matigovergewicht, -Ernstigovergewicht)
sapply(lengtegewicht, class)
# geslacht wordt factor
lengtegewicht$Geslacht <- as.factor(lengtegewicht$Geslacht)
lengtegewicht$Ondergewicht <- as.numeric(lengtegewicht$Ondergewicht)
lengtegewicht$Normaalgewicht <- as.numeric(lengtegewicht$Normaalgewicht)/10
lengtegewicht$Overgewicht <- as.numeric(lengtegewicht$Overgewicht)/10

percentages <- function(lengtegewicht){
        for (name in c("Ondergewicht", "Normaalgewicht", "Overgewicht")) {
                lengtegewicht[,name] <- lengtegewicht[,name] /100

        }
        lengtegewicht
}
lengtegewicht <-percentages(lengtegewicht)

#devtools::use_data(lengtegewicht, internal = TRUE, overwrite = TRUE)
