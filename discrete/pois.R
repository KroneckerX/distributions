x=3
lambda=2
dpois(x, lambda = lambda)
ppois(x, lambda = lambda)


n=200
x2 <- rpois(n, lambda)
hist(x2, probability = TRUE, breaks = n)
fit<-fitdist(x2, "pois")
qqp(x2, "pois", fit$estimate)
fit