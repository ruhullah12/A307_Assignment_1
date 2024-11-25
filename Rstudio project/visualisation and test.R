library(readr)
WHP<-read_csv("World_happiness_report_2019.csv")
ds<-WHP
names (ds)[3] <- "score"
names (ds)[4] <- "GDP"
hist(ds$score, main = "Histogram of Happiness Score")
