pexp(0.3, 1/5)

set.seed(1)
randomexp <- rexp(200, 0.3)
plot(randomexp)
hist(randomexp)
cdfexp = pexp(randomexp, 0.3)
plot(randomexp, cdfexp)

fitexp <- fitdist(randomexp, "exp")
fitexp
ks.test(randomexp, "pexp", fitexp$estimate)

gofstat(fitexp)
plot(fitexp)
