library(dplyr)
library(reshape2)

######################
### DOWNLOAD DATA ####
######################

download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

setwd("~/Rstudio/exam_dprep")
dir.create("../../data")

url_listings <- "http://data.insideairbnb.com/portugal/lisbon/lisbon/2021-09-16/visualisations/listings.csv"
url_reviews <- "http://data.insideairbnb.com/portugal/lisbon/lisbon/2021-09-16/visualisations/reviews.csv"

download_data(url_listings, "../../data/listings")
download_data(url_reviews, "../../data/reviews")