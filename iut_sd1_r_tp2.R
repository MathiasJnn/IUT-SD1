#exo 1 
#1 importer des données + vérifier les types

setwd(dir = "L:/BUT/SD/Promo 2023/mjanin/R")
df=read.csv("fao.csv",header=TRUE,dec=",",sep=";")
class(df$Nom)
class(df$Dispo_alim)
class(df$Prod_viande)
class(df$Import_viande)
class(df$Export_viande)
class(df$Population)
# dans l'environnement, c'est aussi écrit

#2 count(pays)
nrow(df)

#3 résumé
summary(df)



#exo 2 
#1 moyenne
mean(df$Dispo_alim)

#2 somme
sum(df$Population,na.rm=TRUE)

#3 ecart type
sd(df$Export_viande,na.rm=TRUE)
sd(df$Import_viande)

#4 médiane
median(df$Prod_viande,na.rm=TRUE)

#5 quartiles
quantile(df$Dispo_alim,seq(0,1,0.25))

#6 centiles
quantile(df$Import_viande,seq(0,1,0.1))



#exo 3
#1 flop_5_population
flop_5_population=head(df[order(df$Population),],5)

#2 top_5_population
top_5_population=head(df[order(df$Population,decreasing = TRUE),],5)

#3 top__5_viande
top_5_prod_viande=head(df[order(df$Prod_viande,decreasing = TRUE),],5)

#4 top_5_import_viande
top_5_import_viande=head(df[order(df$Import_viande,decreasing = TRUE),],5)

#5
dispo_alim= subset(df,Dispo_alim >=2300)
