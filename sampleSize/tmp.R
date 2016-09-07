##set,seed(123)可以保证rnorm的纸一样
##dnrom
##pnorm
##qporm
rm(list=ls())
power <- function (n,delta,alpha=0.05){
  tmp <- sqrt(n)*delta-qnorm(alpha/2,lower.tail=FALSE)  
  pnorm(tmp)
}
n <- seq(10,100,5)
delta <- 0.5
plot(n,power(n,delta))
abline(h=0.8,lty=2)

z1 <- qnorm(alpha/2,lower.tail=FALSE)
z2 <- qnorm(0.2,lower.tail=FALSE)
(z1+z2)^2/delta^2
