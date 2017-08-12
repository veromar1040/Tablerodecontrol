generadodominio <-data.frame(subset(query, fecha_apertura <="Sys.time()-34", select =c(Dominio, estado)))
metricagenerados<-table(generadodominio)
metricagenerados

barplot(as.matrix(metricagenerados), col=c('blue','red','black','yellow','pink','purple','gray','green','orange','yellow4','turquoise','tan4','tomato2'), main= "Incidentes Generados por Dominio",las=1,  xlab = "Incidentes Generados", legend = TRUE, beside= TRUE, args.legend = list(x="topleft", cex = .7, bty = 'n'), ylim=c(0,40))