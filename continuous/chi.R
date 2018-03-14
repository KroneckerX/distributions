rangchi = seq(0, 20, 0.01)
ychi <- dchisq(rangchi, df=4)
plot(rangchi, ychi, type="l")

dfchi = 4
nchi = 500
rchi <- rchisq(n=nchi, df=dfchi)
plot(rchi)


cdfchi <- pchisq(rchi, df=dfchi)
plot(rchi, cdfchi)

fitchi <- fitdist(rchi,"chisq",start=list(df=dfchi), method="mle")
plot(fitchi)
