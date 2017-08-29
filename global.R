library(flowDashboard)
library(tidyverse)
plotObj <- reactiveValues(gating="")
plotObj2 <- reactiveValues(gating="")

wd <- paste0(getwd(), "/data/")
imageDir <- paste0(wd, "/gating/")

addResourcePath("data","data")
#load("data/objects.RData")
load("data/GvHD.rda")
#GO$imageDir <- imageDir

goObjId2 <- "GO2"
goObjId3 <- "GO3"

annotCols <- GO$annotCols

#print(GO$imageDir)

popSubsets <- GO$popSubsets
