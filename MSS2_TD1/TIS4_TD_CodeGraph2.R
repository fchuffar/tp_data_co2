
##-begin---------------------------------------------------- Graphique 2 ------------------------------------------------------
par(mfrow=c(1,1))
co2.max <- max(c(CO2$Assimilation, CO2.prd$fit))
plot(CO2$Assimilation, CO2.prd$fit, type='p', pch=20, xlim=c(0,co2.max), ylim=c(0,co2.max), xlab="Assimilation du CO2 (µmol/m².s) - données", ylab="Assimilation du CO2 (µmol/m².s) - modèle", main="Adéquation données - modèle")
segments(CO2$Assimilation, CO2.prd$fit, CO2$Assimilation, CO2.prd$fit-1.96*CO2.prd$se.fit,col="gray60")> segments(CO2$Assimilation, CO2.prd$fit, CO2$Assimilation, CO2.prd$fit+1.96*CO2.prd$se.fit,col="gray60")
points(CO2$Assimilation, CO2.prd$fit, pch=20)
CO2.prd.lm <- lm(CO2.prd$fit ~ CO2$Assimilation) # commentez cette ligne
abline(CO2.prd.lm, col="black", lty=2)
#abline(a=CO2.prd.lm$coefficients[1], b=1,col='red')
abline(a=0, b=1,col='red')
##-end-----------------------------------------------------------------------------------------------------------------------  

