x=10
p=0.4
dgeom(x, p)

n = 100
r<- rgeom(n,p)
summary(r)
hist(r)

pg<-pgeom(r,p)
hist(pg)