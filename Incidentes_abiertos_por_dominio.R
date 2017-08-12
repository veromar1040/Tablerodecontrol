abiertosdominio <-data.frame(subset(query,estado =="OP", select =c(Dominio, estado)))
metricaabiertos<-table(sort(abiertosdominio$Dominio, abiertosdominio$estado,decreasing = T))
metricaabiertos


barplot(sort(metricaabiertos), col = sample(colours(), 12), main= "Incidentes Abiertos por Dominio",las=1,  xlab = "Incidentes Abiertos", legend = TRUE, beside= TRUE, xlim=c(1,21),args.legend = list(x="topright", cex = .65, bty = 'n'), names.arg = FALSE)
