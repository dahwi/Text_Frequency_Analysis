#Book1
hist(data1$numOfOccur, prob=T, breaks=seq(-0.5,12.5,by=1),main = "Book1",xlab="number of Occurrences",ylab="percentage of counts")
#plot a probability density function of Poission of estimated lambda(1)
curve((1.02)^x/exp(1.02)/factorial(x),add=TRUE) 

observed <- hist(data1$numOfOccur, breaks=seq(-0.5,12.5,by=1),plot=F)$counts

expected <- dpois(0:11, 1.02)
expected[12] <- 1-sum(expected[1:11])
counts.expected<-expected*sum(observed)
counts.expected
counts.expected[5]<-sum(counts.expected[5:length(counts.expected)])
counts.expected <- counts.expected[1:5]
counts.expected

observed[5] <- sum(observed[5:length(observed)])
observed <- observed[1:5]
observed

table1<-rbind(observed,counts.expected)
table1
#chi-square goodness of fit test for book 1
chisq(table1)
pchisq(chisq(table1), length(table1[1,])-2, lower.tail = FALSE) #df=k-l-1 since the parameter(lambda) is estimated from the data


#Book2
hist(data2$numOfOccur, prob=T, breaks=seq(-0.5,12.5,by=1),main = "Book2",xlab="number of Occurrences",ylab="percentage of counts")
#plot a probability density function of Poission of estimated lambda(1.7)
curve((1.64)^x/exp(1.64)/factorial(x),add=TRUE)

observed <- hist(data2$numOfOccur, breaks=seq(-0.5,12.5,by=1),plot=F)$counts
expected <- dpois(0:11, 1.64)
expected[12] <- 1-sum(expected[1:11])
counts.expected<-expected*sum(observed)
counts.expected
counts.expected[6]<-sum(counts.expected[6:length(counts.expected)])
counts.expected<-counts.expected[1:6]
counts.expected

observed[6] <- sum(observed[6:length(observed)])
observed <- observed[1:6]

table2<-rbind(observed,counts.expected)
table2
#chi-square goodness of fit test for book 2
chisq(table2)
pchisq(chisq(table2), length(table2[1,])-2, lower.tail = FALSE) #df=k-l-1 since the parameter(lambda) is estimated from the data


#Book3
hist(data3$numOfOccur, prob=T, breaks=seq(-0.5,12.5,by=1),main = "Book3",xlab="number of Occurrences",ylab="percentage of counts")
#plot a probability density function of Poission of estimated lambda(2.2)
curve((2.24)^x/exp(2.24)/factorial(x), add=TRUE)

#chi-square test for book 3
observed <- hist(data3$numOfOccur, breaks=seq(-0.5,12.5,by=1),plot=F)$counts
observed

expected <- dpois(0:11, 2.24)
expected[12] <- 1-sum(expected[1:11])
counts.expected<-expected*sum(observed)
counts.expected
counts.expected[7]<-sum(counts.expected[7:length(counts.expected)])
counts.expected<-counts.expected[1:7]
counts.expected

observed[7] <- sum(observed[7:length(observed)])
observed <- observed[1:7]

table3<-rbind(observed,counts.expected)
table3
#chi-square goodness of fit test for book 3
chisq(table3)
pchisq(chisq(table3), length(table3[1,])-2, lower.tail = FALSE) #df=k-l-1 since the parameter(lambda) is estimated from the data
