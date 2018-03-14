wshape = 3
wscale = 7
rangwei = seq(0, 20, 0.01)
ywei <- pweibull(rangwei, shape =  wshape, scale = wscale)
plot(rangwei, ywei, type = "l")

nwei = 200
randwei <- rweibull(nwei, shape =  wshape, scale = wscale)
plot(randwei)
hist(randwei)

cdfwei <- pweibull(randwei,  shape =  wshape, scale = wscale)
plot(randwei, cdfwei)

fitwei <- fitdist(randwei,"weibull")
plot(fitwei)