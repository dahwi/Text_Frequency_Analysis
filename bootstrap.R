Book1 <- data1$numOfOccur
Book2 <- data2$numOfOccur
Book3 <- data3$numOfOccur

N <- 10^4

#Difference in means between Book 1 and Book 2 
word.diff.mean <- numeric(N)

for(i in 1:N)
{
  Book1.sample <- sample(Book1, 50, replace = TRUE)
  Book2.sample <- sample(Book2, 50, replace = TRUE)
  word.diff.mean[i] <- mean(Book2.sample)-mean(Book1.sample)
}

hist(word.diff.mean)
abline(v=mean(Book2)-mean(Book1), col ="red") #observed main difference 
diff.mean <- mean(Book2.sample)-mean(Book1.sample)
diff.mean
CI.95 <- quantile(word.diff.mean, c(0.025, 0.975))
CI.95

#Difference in means between Book 1 and Book 3 
word.diff.mean2 <- numeric(N)

for(i in 1:N)
{
  Book1.sample <- sample(Book1, 50, replace = TRUE)
  Book3.sample <- sample(Book3, 50, replace = TRUE)
  word.diff.mean2[i] <- mean(Book3.sample)-mean(Book1.sample)
}

hist(word.diff.mean)
abline(v=mean(Book3)-mean(Book1), col ="red") #observed mean difference
diff.mean <- mean(Book3.sample)-mean(Book1.sample)
diff.mean
CI.95 <- quantile(word.diff.mean2, c(0.025, 0.975))
CI.95

#Difference in means between Book 2 and Book 3 
word.diff.mean3 <- numeric(N)

for(i in 1:N)
{
  Book2.sample <- sample(Book2, 50, replace = TRUE)
  Book3.sample <- sample(Book3, 50, replace = TRUE)
  word.diff.mean3[i] <- mean(Book3.sample)-mean(Book2.sample)
}

hist(word.diff.mean)
abline(v=mean(Book3)-mean(Book2), col ="red") #observed mean difference
diff.mean <- mean(Book3.sample)-mean(Book2.sample)
diff.mean
CI.95 <- quantile(word.diff.mean3, c(0.025, 0.975))
CI.95