---
title: "Tablero de control corporativo para la medición de incidentes de tecnología"
output: 
  flexdashboard::flex_dashboard:
    orientation: rows
    vertical_layout: fill

---

```{r setup, include=FALSE}
library(flexdashboard)
library(rJava)
library(RMongo)

```

row
-----------------------------------------------------------------------

### Incidentes generados en cada prioridad

```{r}
mongo <- mongoDbConnect("test")
query <- dbGetQuery(mongo, 'incidentes',"")
prioridad<-table(query$prioridad)
pie(prioridad, col = c("steelblue", "darkred", "darkolivegreen4"), main="Incidentes generados en cada prioridad", labels = prioridad,  radius = 0.9)
legend("topright", c("Critica","Media", "Baja"), cex = 0.9,fill = c( "darkred", "darkolivegreen4","steelblue"),bty = 'n')


```


row
-----------------------------------------------------------------------

### Criticidad por Dominio


```{r}
mongo <- mongoDbConnect("test")
query <- dbGetQuery(mongo, 'incidentes',"")
criticidadadmin <-data.frame(subset(query,Dominio == "Administrativo", select =c(Dominio, prioridad)))
metricaadmin<-table(criticidadadmin)
criticidadadminident <-data.frame(subset(query,Dominio == "Administracion de Identidades y Accesos", select =c(Dominio, prioridad)))
metricaadminident<-table(criticidadadminident)
criticidadcanales <-data.frame(subset(query,Dominio == "Canales y Tarjetas", select =c(Dominio, prioridad)))
metricacanales<-table(criticidadcanales)
criticidadclientes <-data.frame(subset(query,Dominio == "Clientes y ERP", select =c(Dominio, prioridad)))
metricaclientes<-table(criticidadclientes)
criticidadinfo <-data.frame(subset(query,Dominio == "Informacion y Aplicaciones Corporativas", select =c(Dominio, prioridad)))
metricainfo<-table(criticidadinfo)
criticidadint <-data.frame(subset(query,Dominio == "Integrada Operacion de TI", select =c(Dominio, prioridad)))
metricaint<-table(criticidadint)
criticidadlog <-data.frame(subset(query,Dominio == "Logistica Integral", select =c(Dominio, prioridad)))
metricalog<-table(criticidadlog)
criticidadneg <-data.frame(subset(query,Dominio == "Negocios Especializados", select =c(Dominio, prioridad)))
metricaneg<-table(criticidadneg)
criticidadope <-data.frame(subset(query,Dominio == "Operaciones", select =c(Dominio, prioridad)))
metricaope<-table(criticidadope)
criticidadplatcen <-data.frame(subset(query,Dominio == "Plataformas Centrales", select =c(Dominio, prioridad)))
metricaplatcen<-table(criticidadplatcen)
criticidadplatdis <-data.frame(subset(query,Dominio == "Plataformas Distribuidas y Colaboracion", select =c(Dominio, prioridad)))
metricaplatdis<-table(criticidadplatdis)
criticidadsopban <-data.frame(subset(query,Dominio == "Soporte de Aplicaciones Banistmo", select =c(Dominio, prioridad)))
metricasopban<-table(criticidadsopban)
criticidadtele <-data.frame(subset(query,Dominio == "Telecomunicaciones", select =c(Dominio, prioridad)))
metricatele<-table(criticidadtele)

pie(metricaadmin, main = " Identidades y Accesos", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaadmin,  radius = 0.5)
 pie(metricaadminident, main = "Administrativo", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaadminident,  radius = 0.5)
 pie(metricacanales, main = "Canales y Tarjetas", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricacanales,  radius = 0.5)
 pie(metricaclientes, main = "Clientes y ERP", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaclientes,  radius = 0.5)
 pie(metricainfo, main = "Informacion", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricainfo,  radius = 0.5)
 pie(metricaint, main = "Integrada Operacion de TI", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaint,  radius = 0.5)
 pie(metricalog, main = "Logistica Integral", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricalog,  radius = 0.5)
 pie(metricaneg, main = "Negocios Especializados", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaneg,  radius = 0.5)
 pie(metricaope, main = "Operaciones", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaope,  radius = 0.5)
 pie(metricaplatcen, main = "Plataformas Centrales", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaplatcen,  radius = 0.5)
 pie(metricaplatdis, main = "Plataformas Distribuidas", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricaplatdis,  radius = 0.5)
 pie(metricasopban, main = "Aplicaciones Banistmo", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricasopban,  radius = 0.5)
 pie(metricatele, main = "Telecomunicaciones", col = c("steelblue", "darkred", "darkolivegreen4"),labels = metricatele,  radius = 0.5)



```

row
-----------------------------------------------------------------------

### Incidentes Abiertos por Dominio

```{r}
abiertosdominio <-data.frame(subset(query,estado =="OP", select =c(Dominio, estado)))
metricaabiertos<-table(sort(abiertosdominio$Dominio, abiertosdominio$estado,decreasing = T))


barplot(sort(metricaabiertos), col = sample(colours(), 12), main= "Incidentes Abiertos por Dominio",las=1,  xlab = "Incidentes Abiertos", legend = TRUE, beside= TRUE, xlim=c(1,21),args.legend = list(x="topleft", cex = .65, bty = 'n'), names.arg = FALSE)
```

### Incidentes Generados por Dominio

```{r}
generadodominio <-data.frame(subset(query, fecha_apertura <="Sys.time()-34", select =c(Dominio, estado)))
metricagenerados<-table(generadodominio)



barplot(as.matrix(metricagenerados), col=c('blue','red','black','yellow','pink','purple','gray','green','orange','yellow4','turquoise','tan4','tomato2'), main= "Incidentes Generados por Dominio",las=1,  xlab = "Incidentes Generados", legend = TRUE, beside= TRUE, args.legend = list(x="topleft", cex = .7, bty = 'n'), ylim=c(0,40))


```
