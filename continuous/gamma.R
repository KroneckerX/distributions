alphag = 3
lambdag = 2
rangeg = seq(0, 20, 0.01)
yg <- dgamma(rangeg, shape=alphag, scale = lambdag)
plot(rangeg, yg, type="l")

ngamma = 500
rgamma <- rgamma(n=ngamma, shape = alphag, scale = lambdag)
plot(rgamma)

cdfg <- pgamma(rgamma, shape =alphag, scale = lambdag)
plot(rgamma, cdfg)

fitgamma <- fitdist(rgamma, "gamma")
summary(fitgamma)
plot(fitgamma)
