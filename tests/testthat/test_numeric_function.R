# testing numeric function #6
# display densityline with minimum, maximum and median values (like sparkline).
# also display mean and sd values
# perhaps normality check?
context("functioning of numeric function")
testobject<- numeric_function(iris$Sepal.Length)
test_that("numeric function creates mean, median", {
        expect_equal(testobject$mean, mean(iris$Sepal.Length))
        expect_equal(testobject$median, median(iris$Sepal.Length))
        expect_equal(testobject$min, min(iris$Sepal.Length))
        expect_equal(testobject$max, max(iris$Sepal.Length))
        expect_equal(testobject$sd, sd(iris$Sepal.Length))

})


rm(testobject)
numeric_function
