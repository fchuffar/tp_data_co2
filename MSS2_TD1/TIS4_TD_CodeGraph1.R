##-begin---------------------------------------------------- Graphique 1 ------------------------------------------------------
par(mfrow=c(1,2))
i <- 1
with(CO2.q, plot(Assimilation[as.numeric(ID_Plante)==i] ~ C_CO2[as.numeric(ID_Plante)==i], type='b', pch=i, col=col.v[as.numeric(Traitement[as.numeric(ID_Plante)==i])], ylim=c(0,max(Assimilation)), xlab="Concentration de C02 (µl/l)", ylab="Assimilation du CO2 (µmol/m².s)", main="Quebec") )
for (i in 2:6) {
with(CO2.q, lines(Assimilation[as.numeric(ID_Plante)==i] ~ C_CO2[as.numeric(ID_Plante)==i], type='b', pch=i, col=col.v[as.numeric(Traitement[as.numeric(ID_Plante)==i])]) )
}

temp <- legend("bottomright", legend = c("Temperature ambiante","Nuit à 4°C"), lwd=c(2,2), lty=c(1,1), pch = c(-1,-1), col=c('black','gray50'), bg = 'white')
text(temp$rect$left + temp$rect$w, pos=1)

i <- 7
with(CO2.m, plot(Assimilation[as.numeric(ID_Plante)==i] ~ C_CO2[as.numeric(ID_Plante)==i], type='b', pch=i, col=col.v[as.numeric(Traitement[as.numeric(ID_Plante)==i])], ylim=c(0,max(Assimilation)), xlab="Concentration de C02 (µl/l)", ylab="Assimilation du CO2 (µmol/m².s)", main="Mississippi") )
for (i in 8:12) {
with(CO2.m, lines(Assimilation[as.numeric(ID_Plante)==i] ~ C_CO2[as.numeric(ID_Plante)==i], type='b', pch=i, col=col.v[as.numeric(Traitement[as.numeric(ID_Plante)==i])]) )
}

temp <- legend("bottomright", legend = c("Temperature ambiante","Nuit à 4°C"), lwd=c(2,2), lty=c(1,1), pch = c(-1,-1), col=c('black','gray50'), bg = 'white')
text(temp$rect$left + temp$rect$w, pos=1)
##-end-----------------------------------------------------------------------------------------------------------------------  
