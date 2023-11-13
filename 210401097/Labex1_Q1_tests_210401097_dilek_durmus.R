library(testthat)
#2.1 dosya oluştu

#2.2 
rm(list = ls()) 
if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")
}
# 2.3 
source("Labex1_Q1_210401097_dilek_durmus.R")
# 2.4
test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyası mevcut", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})
