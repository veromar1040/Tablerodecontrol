install.packages(“RMongo”)

Install.packages(“rJava”)

library(rJava)

library(RMongo)

mongo <- mongoDbConnect("test")

query <- dbGetQuery(mongo, 'incidentes',"")