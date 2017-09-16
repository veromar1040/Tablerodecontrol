prioridad<-table(query$prioridad)


pie(prioridad, col = c("goldenrod1", "darkred", "darkorange1"), main="Incidentes generados en cada prioridad", labels = prioridad,  radius = 0.9)
legend("topright", c("Crítica","Media", "Baja"), cex = 0.8,fill = c( "darkred", "darkorange1","goldenrod1"), bty = 'n')
