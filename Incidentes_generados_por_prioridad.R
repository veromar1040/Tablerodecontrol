prioridad<-table(query$prioridad)


pie(prioridad, col = c("steelblue", "darkred", "darkolivegreen4"), main="Incidentes generados en cada prioridad", labels = prioridad)
legend("topright", c("Critica","Media", "Baja"), cex = 0.8,fill = c( "darkred", "darkolivegreen4","steelblue"))
