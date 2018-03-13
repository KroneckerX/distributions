x=10
size=6
prob=0.3


n=145
x1 <- rnbinom(n, size, prob)
hist(x1, prob=TRUE, breaks=n)
fit <- fitdist(x1, "nbinom", fix.arg = list(size=size), start = list(prob=prob))
qqp(x1, "nbinom", size=size, fit$estimate)
