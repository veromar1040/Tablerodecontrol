abiertosdominio <-data.frame(subset(query,estado =="OP", select =c(Dominio, estado)))
metricaabiertos<-table(sort(abiertosdominio$Dominio, abiertosdominio$estado,decreasing = T))
metricaabiertos


barplot(sort(metricaabiertos), col = c('blue','red','black','yellow','pink','purple','gray','green','orange','yellow4','turquoise','tan4'), main= "Incidentes Abiertos por Dominio",las=1,  xlab = "Incidentes Abiertos", legend = TRUE, beside= TRUE, xlim=c(1,21),args.legend = list(x="topleft", cex = .8, bty = 'n'), names.arg = FALSE)