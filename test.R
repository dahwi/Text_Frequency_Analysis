data <- read.csv("result1.csv")
data2 <- read.csv("result2.csv")
data3 <- read.csv("result3.csv")
library(ggplot2)

qplot(data$numOfOccur, geom="histogram")+theme_bw()
qplot(data2$numOfOccur, geom="histogram")+theme_bw()
qplot(data3$numOfOccur, geom="histogram")+theme_bw()


summary(data$numOfOccur)
summary(data2$numOfOccur)
summary(data3$numOfOccur)
