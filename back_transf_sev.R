inv.logit <- function(f,a) {
  a <- (1-2*a)
  (a*(1+exp(f))+(exp(f)-1))/(2*a*(1+exp(f)))
}

#library(car)
#dat <- data.frame(a=c(0, 46.4, 69.5, 82.7, 61.7, 76.4, 84.8, 69.1,100))
#dat$L1 <- car::logit(dat$a, percents=TRUE)
#dat$aa = zapsmall(inv.logit(dat$L1,a=0.025)*100)
#plot(dat$a, pch=3) ; points(dat$aa, col="red")


inv.arcsin <- function(x) {
  sin(x)^2
}

# dat <- data.frame(sev=c(0, 46.4, 69.5, 82.7, 61.7, 76.4, 84.8, 69.1,100))
# dat$as <- asin(sqrt(dat$sev/100))
# dat$as_back = zapsmall(inv.arcsin(dat$as))*100
# plot(dat$sev, pch=3) ; points(dat$as_back, col="red")
