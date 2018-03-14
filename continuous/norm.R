# We are interested in upper tail of normal distribution
pnorm(80, mean=57, sd=12.4, lower.tail=FALSE) 

n = 100
mean = 13
sd = 2.4

randomnorm <- rnorm(n, mean=mean, sd=sd)
#plot(randomnorm)
#pdfnorm <- dnorm(randomnorm, mean=mean, sd=sd)
#plot(randomnorm, pdfnorm)

nn = 200
randomnorm2 <- rnorm(nn, mean=mean, sd=sd)
fln <- fitdist(randomnorm2, "norm")
quantile(fln, probs = 0.05)
quantile(fln, probs = c(0.05, 0.1, 0.2))
plot(fln)
gofstat(fln)