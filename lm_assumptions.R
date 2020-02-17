RequiredPackages <- c("olsrr","MASS")
for (i in RequiredPackages) { #Installs packages if not yet installed
  if (!require(i, character.only = TRUE)) install.packages(i)
}

assump <- function(model)
{
  par(mfrow=c(3,1), 
      oma = c(2, 2, 4, 2),
      mar = c(4, 10, 4, 10)) 
  plot(model, which=2, 
       main = paste("P=", round(MASS::shapiro.test(model$residuals)$"p.value",3)))
  plot(model, which=3, 
       main=paste("P=",main= round(olsrr::ols_test_score(model)$p,3)))
  bc <- MASS::boxcox(model)
  lambda <- bc$x[which.max(bc$y)]
  layout(1)
  output(print(paste("Box-Cox suggested transformation:", round(lambda, 1))))
}
