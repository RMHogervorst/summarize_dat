#
#' create data frame with summary information about a data frame
#'
#' Creates a data frame about a dataframe.
#' usefull in codebook description
#' @param dataframe your data frame of choice
#' @return a dataframe with length equal to number of columns in parent data frame
#'
#' @export
codebook <- function(dataframe){
        frame <- dplyr::data_frame(
                columnname = names(dataframe),
                class = sapply(dataframe, class),
                missings = sapply(dataframe, function(x) sum(is.na(x))),
                uniquevalues = sapply(dataframe, function(x) length(unique(x))),
                factorlevels = integer(ncol(dataframe)),
                factornames = character(ncol(dataframe)),
                ordinal = logical(ncol(dataframe)),
                nummean = numeric(ncol(dataframe)),
                numsd = numeric(ncol(dataframe))
        )
        fnames <- class_based_names(dataframe, "factor")
        if(length(fnames >0 )){
        frame$factorlevels[frame$class == "factor"] <- sapply(dataframe[,fnames], nlevels)
        frame$factornames[frame$class == "factor"] <- sapply(dataframe[,fnames], function(x) paste(levels(x),collapse = ","))
        frame$ordinal[frame$class == "factor"] <- sapply(dataframe[,fnames], is.ordered )
        }
        nnames <- class_based_names(dataframe,"numeric")
        if(length(nnames) >0){
                frame$nummean[frame$class == "numeric"] <- sapply(dataframe[,nnames], mean, na.rm=TRUE)
                frame$numsd[frame$class == "numeric"] <- sapply(dataframe[,nnames], sd, na.rm = TRUE)
        }
        inames <- class_based_names(dataframe, "integer")
        if(length(inames) >0){
                frame$nummean[frame$class == "integer"] <- sapply(dataframe[,inames], mean, na.rm=TRUE)
                frame$numsd[frame$class == "integer"] <- sapply(dataframe[,inames], sd, na.rm=TRUE)
        }

        frame
}


# essential for the codebook function
class_based_names <- function(df, classname) {
        labelled<-sapply(df, class) == classname
        names(df[labelled])
}
