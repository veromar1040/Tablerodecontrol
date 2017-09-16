criticidaddominio <-data.frame(subset(query,select =c(Dominio, prioridad)))
metricaprioridad<-table(criticidaddominio)
metricaprioridad

criticidadadmin <-data.frame(subset(query,Dominio == "Administrativo", select =c(Dominio, prioridad)))
metricaadmin<-table(criticidadadmin)
metricaadmin

criticidadadminident <-data.frame(subset(query,Dominio == "Administracion de Identidades y Accesos", select =c(Dominio, prioridad)))
metricaadminident<-table(criticidadadminident)
metricaadminident

criticidadcanales <-data.frame(subset(query,Dominio == "Canales y Tarjetas", select =c(Dominio, prioridad)))
metricacanales<-table(criticidadcanales)
metricacanales

criticidadclientes <-data.frame(subset(query,Dominio == "Clientes y ERP", select =c(Dominio, prioridad)))
metricaclientes<-table(criticidadclientes)
metricaclientes

criticidadinfo <-data.frame(subset(query,Dominio == "Informacion y Aplicaciones Corporativas", select =c(Dominio, prioridad)))
metricainfo<-table(criticidadinfo)
metricainfo

criticidadint <-data.frame(subset(query,Dominio == "Integrada Operacion de TI", select =c(Dominio, prioridad)))
metricaint<-table(criticidadint)
metricaint

criticidadlog <-data.frame(subset(query,Dominio == "Logistica Integral", select =c(Dominio, prioridad)))
metricalog<-table(criticidadlog)
metricalog

criticidadneg <-data.frame(subset(query,Dominio == "Negocios Especializados", select =c(Dominio, prioridad)))
metricaneg<-table(criticidadneg)
metricaneg

criticidadope <-data.frame(subset(query,Dominio == "Operaciones", select =c(Dominio, prioridad)))
metricaope<-table(criticidadope)
metricaope

criticidadplatcen <-data.frame(subset(query,Dominio == "Plataformas Centrales", select =c(Dominio, prioridad)))
metricaplatcen<-table(criticidadplatcen)
metricaplatcen

criticidadplatdis <-data.frame(subset(query,Dominio == "Plataformas Distribuidas y Colaboracion", select =c(Dominio, prioridad)))
metricaplatdis<-table(criticidadplatdis)
metricaplatdis

criticidadsopban <-data.frame(subset(query,Dominio == "Soporte de Aplicaciones Banistmo", select =c(Dominio, prioridad)))
metricasopban<-table(criticidadsopban)
metricasopban

criticidadtele <-data.frame(subset(query,Dominio == "Telecomunicaciones", select =c(Dominio, prioridad)))
metricatele<-table(criticidadtele)
metricatele

par(mfrow=c(3,5))

pie(metricaadmin, main = "Administrativo", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaadmin,  radius = 1)
 pie(metricaadminident, main = "Identidades y Accesos", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaadminident,  radius = 1)
 pie(metricacanales, main = "Canales y Tarjetas", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricacanales,  radius = 1)
 pie(metricaclientes, main = "Clientes y ERP", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaclientes,  radius = 1)
 pie(metricainfo, main = "Informacion", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricainfo,  radius = 1)
 pie(metricaint, main = "Integrada Operacion de TI", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaint,  radius = 1)
 pie(metricalog, main = "Logistica Integral", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricalog,  radius = 1)
 pie(metricaneg, main = "Negocios Especializados", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaneg,  radius = 1)
 pie(metricaope, main = "Operaciones", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaope,  radius = 1)
 pie(metricaplatcen, main = "Plataformas Centrales", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaplatcen,  radius = 1)
 pie(metricaplatdis, main = "Plataformas Distribuidas", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricaplatdis,  radius = 1)
 pie(metricasopban, main = "Aplicaciones Banistmo", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricasopban,  radius = 1)
 pie(metricatele, main = "Telecomunicaciones", col = c("goldenrod1", "darkred", "darkorange1"),labels = metricatele,  radius = 1)

legend("bottomright", c("Critica","Media", "Baja"), cex = 0.8,fill = c( "darkred", "darkorange1","goldenrod1"))
