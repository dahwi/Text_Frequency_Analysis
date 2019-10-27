data1 <- read.csv("result1.csv")
data2 <- read.csv("result2.csv")
data3 <- read.csv("result3.csv")

#population parameter
mean(data1$numOfOccur)
mean(data2$numOfOccur)
mean(data3$numOfOccur)

#get 50 random pages from each book and estimate the parameter(lambda)
set.seed(987654)

BK1 = sample(1:403,50)
sample1<-data1[BK1,]
lambda1<-mean(sample1$numOfOccur)

BK2 = sample(1:307,50)
sample2<-data2[BK2,]
lambda2<-mean(sample2$numOfOccur)

BK3 = sample(1:269,50)
sample3<-data3$numOfOccur[BK3]
lambda3<-mean(sample3)

