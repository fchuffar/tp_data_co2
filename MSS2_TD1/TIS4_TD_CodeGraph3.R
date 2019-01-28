
##-begin---------------------------------------------------- Graphique 3 ------------------------------------------------------
plot(CO2$Assimilation, Plante.prd$fit, pch=c(2,20)[as.numeric(CO2$Traitement)], xlab="Assimilation du CO2 (µmol/m².s)", ylab="P(Type = 'Mississippi')", main="Probabilité d'appartenir à un type de plante", ylim=c(0,1), xlim=c(0,max(CO2$Assimilation)), col=c("black","gray80")[as.numeric(CO2$Type_Plante)], cex=c(0.8,1)[as.numeric(CO2$Traitement)])
abline(h=0.5,col='red')
temp <- legend("topright", legend = c("Quebec - nuit 20°C","Quebec - nuit 4°C","Mississippi - nuit 20°C","Mississippi - nuit 4°C"), pch=c(2,20,2,20), lty = c(-1,-1,-1,-1), col=c("black","black","gray80","gray80"), bg = 'white')
text(temp$rect$left + temp$rect$w, pos=1)
##-end-----------------------------------------------------------------------------------------------------------------------  

