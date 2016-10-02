#helperfunctions


# general description of dataset
general_info <- function(df){
        general<- list(
                "size" = object.size(df),
                "dimensions" = dim(df),
                "class" = attr(df, "class"),
                # if groups
                "group_names"    =       attr(df, "vars"),
                "group_sizes"   =        attr(df, "group_sizes"),
                "biggest_group_size" =   attr(df, "biggest_group_size"),
                "rownames" = row.names(df),
                "columnnames" = names(df),
                "n_unique" = lapply(df, function(x) length(unique(x)))
        )
        general
}
#
# general description of all numeric variables
# All the variables are already in the density function.
numeric_function <- function(var){
        numeric_things <- list(
                # display densityline with minimum, maximum and median values (like sparkline).
                density = density(var),
                # also display mean and sd values
                mean = mean(var, na.rm = TRUE), ##
                median = median(var, na.rm = TRUE),
                min = min(var, na.rm = TRUE),
                max = max(var, na.rm = TRUE),
                sd = sd(var, na.rm = TRUE),
                normality = shapiro.test(var)
                # perhaps normality check?
        )
        numeric_things
}
#
# general description of all factor variables
#
factor_function <- function(var) {
        # if less or equal to 10 the numbers per category
        if(nlevels(var) <11){
                plot(var)
        }else{
                # make table
                tabl <- table(var)
                # order on length
                tabl <- sort(tabl,decreasing = TRUE)
                # return largests 8 indexes
                subtabl <- tabl[1:8]
                # plot largest 8
                plot(subtabl)
                # give text summary of all.
                print(tabl)
        }
        # bar chart probably
        # if more than 10 the biggest 5-7 categories
        # if 2 options display special?

}
#
#
# specific actions for every type of class
#
#
# cat outputs for every type of function.
# character variables
character_function <- function(var){
        charact <- list(
                n = length(unique(var)),
                numbers = table(var)
        )
        #number of unique values
        charact
}


