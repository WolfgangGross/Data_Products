library(manipulate)
dat  <- rnorm(n=100,mean=0,sd=4)
myHist <- function(mu){
  hist(dat,col="blue",breaks = 10)
  lines(c(mu,mu),c(0,150),col="red",lwd=5)
  mse <- mean((dat - mu)^2)
  text(-8,20, paste("mu = ", mu))
  text(-8,15, paste("MSE = ",round(mse,2)))
}
manipulate(myHist(mu),mu = slider(-10,10,step=0.5))