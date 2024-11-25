library(readr)
WHP<-read_csv("World_happiness_report_2019.csv")
ds<-WHP
names (ds)[3] <- "score"
names (ds)[4] <- "GDP"
h <- hist(ds$score, main = "Histogram of Happiness Score")
x <- seq(min(ds$score),max(ds$score),length=100)
y <- dnorm (x, mean=mean(ds$score),sd= sd(ds$score))* length(ds$score)
box.size<- diff(h$mids[1:2])
y<- y * box.size
lines(x,y, col="red")