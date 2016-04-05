context("general functioning of codebook function")
# create testdata to work with.
testdata<- codebook(lengtegewicht)
test_that("mean value is zero when factor",{
        expect_equal(testdata$nummean[testdata$class == "factor"], 0)
        })
test_that("factorlevels are zero when not factor", {
        expect_equal(sum(testdata$factorlevels[testdata$class != "factor"]), 0)
})

rm(testdata)  # remove the extra dataset
test_that("class based names function below codebook executes normal", {
        expect_equal(class_based_names(lengtegewicht, "factor"), "Geslacht")
        expect_equal(class_based_names(lengtegewicht, "integer"), "Perioden")
        expect_equal(class_based_names(lengtegewicht, "numeric")[1], "Ondergewicht")
})
