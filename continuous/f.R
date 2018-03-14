mm=3
nn=5
rangf = seq(0, 20, 0.01)
yf <- df(rangchi, df1=mm, df2=nn)
plot(rangf, yf, type="l")

nf = 500
rf <- rf(n=nf, df1=mm, df2=nn)
plot(rf)

cdff <- pf(rf, df1=mm, df2=nn)
plot(rf, cdff)


fitf <- fitdist(rf,"f",start=list(df1=mm, df2=nn), method="mle")
plot(fitf)
