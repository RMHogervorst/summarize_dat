# plotting routines



#### No ggplot loaded: normal plotting
####
#' Plot for numeric variable with normal plot methods
#'
#' @param numeric_var name of the variable to plot (will print pretty)
#'
#' @return plots a density graph with
#'
#' @examples
#' normal_plot_numeric(iris$Sepal.Width)
normal_plot_numeric <- function(numeric_var){
        name <- deparse(substitute(numeric_var))
        # if there is a dollarsign
        # substitute if at least one character followed by dollarsign
        # with nothing. (leaving only varname)
        name <- ifelse(grepl("\\$", name),
                       gsub("^[[:graph:]]{1,}\\$", "", name),
                       name)
        testresult <- numeric_function(numeric_var)
        plot(testresult$density, main = paste0("Density of variable: ", name))
        #max(testresult$density$y)
        points(x = testresult$median,
                y = max(testresult$density$y)/2,
                pch = 3,
               col = "blue")
        text(x = testresult$median,
             y = max(testresult$density$y)/1.5,
             label = "median")
        points(x = testresult$min,
                y = 0,
               pch = 25,
               col = "red")
        points(x = testresult$max,
                y = 0,
               pch = 25,
               col = "red")
        height<- max(testresult$density$y)/3
        leftx <- testresult$mean - testresult$sd
        rightx <-testresult$mean + testresult$sd
        lines(x = c(leftx, rightx), y = c(height, height))
        points(testresult$mean, y = height, pch = 13, col = "green")
        points(x = c(leftx, rightx), y = c(height, height), pch = 4)
        text(testresult$mean, y = max(testresult$density$y)/4,
             label = "M + sd")
}

