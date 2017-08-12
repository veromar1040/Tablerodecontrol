abiertosvsresueltos <-data.frame(subset(query, select =c(estado, Dominio), estado =="RE"|estado == "OP"))
metricaopvsre<-table(abiertosvsresueltos)
metricaopvsre


barplot(as.matrix(metricaopvsre), col = 1:2, las = 1, legend = TRUE, args.legend = list(x="topright", cex = .65), beside = TRUE, horiz = TRUE, xlim=c(0,40), ylim = c(0,40),names.arg = c("adminIA","ADMIN","canTarj","cliERP","infoAPP","IntOPTI","logint","negesp","Ope","platcen","platdiscol","SAPPBan","tele"), cex.names = .8)