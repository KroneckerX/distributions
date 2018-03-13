runid<-function(n,k) sample(1:k,n,replace=T)
dunid<-function(x,k) ifelse(x>=1 & x<=k & round(x)==x,1/k,0)
punid<-function(x,k) ifelse(x<1,0,ifelse(x<=k,floor(x)/k,1))

dunid(51,72)

punid(51,72)