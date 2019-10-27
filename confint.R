confInt<-function(x,n)
{
  q<-qnorm(0.975)
  right<-x+q^2/(2*n)+sqrt(q^4/(4*n^2)+q^2*x/n)
  left<- x+q^2/(2*n)-sqrt(q^4/(4*n^2)+q^2*x/n)
  CI<-c(left,right)
  CI
}

#95% CI of parameter(lambda) of book 1 
confInt(lambda1,50)

#95% CI of parameter(lambda) of book 2 
confInt(lambda2,50)

#95% CI of parameter(lambda) of book 3 
confInt(lambda3,50)