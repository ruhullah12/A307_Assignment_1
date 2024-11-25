library(readr)
WHP<-read_csv("World_happiness_report_2019.csv")
ds<-WHP
names (ds)[3] <- "score"
names (ds)[4] <- "GDP"
#histogram to show normalcy of data 
h <- hist(ds$score, main = "Histogram of Happiness Score")
# Add a normal distribution line
x <- seq(min(ds$score),max(ds$score),length=100)
y <- dnorm (x, mean=mean(ds$score),sd= sd(ds$score))* length(ds$score)
box.size<- diff(h$mids[1:2])
y<- y * box.size
lines(x,y, col="red")
#correlation 
cor.test(ds$score, ds$GDP)  
cor.test(ds$score, ds$GDP, method="pearson")  
plot(ds$GDP, ds$score, xlab = "GDP Per Capita", ylab = "Happiness Score", main = "Scatterplot of GDP per Capita vs Happiness Score")
# Add a trend line  
abline(lm(score ~ GDP, data = ds), col = "red") 