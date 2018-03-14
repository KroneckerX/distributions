rangt = seq(0, 20, 0.01)
dft = 3
yt <- dt(rangt, df=dft)
plot(rangt, yt, type="l")

nt = 200
randt <- rt(nt, df=dft)
hist(randt)

cdft <- pt(randt, df=dft)
plot(randt, cdft)

fitf <- fitdist(randt,"t",start=list(df=dft))
plot(fitf)