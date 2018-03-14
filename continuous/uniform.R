dunif(10,0,20)
punif(17, 0, 60)

runif(50, 0, 2)

plot(random)

random2 <- runif(50, 0, 2)

ks.test(random, random2)



pdf <- dunif(random, 0, 2)
plot(random, type="o")
plot(random, pdf, type="o")
plot(random, pdf)






ru <- runif(500, min=5, max=10)
funif <- fitdist(ru, "unif", method="mle")
summary(funif)
plot(funif)
gofstat(funif)






