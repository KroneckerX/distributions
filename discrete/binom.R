x = 3
size = 8
prob = 0.3
n = 40

dbinom(x, size, prob)
pbinom(x, size, prob)

s <- seq(0, size, by=1)
p <- dbinom(s, size, prob)
plot(p, type="o")


library("fitdistrplus")
library("car")

y <- rbinom(n=n,size=size,prob=prob)
fb <- fitdist(data=y, dist="binom", fix.arg = list(size=size), start = list(prob=prob))
qqp(y, "binom", size=size, fb$estimate)
fb
