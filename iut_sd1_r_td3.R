#TD 3

#exo 1 
getwd()
setwd("L:/BUT/SD/Promo 2023/mjanin/R/dataset")   # CTRL + SHIFT + H
library(readxl)
pokemon = read_excel(path = "pokemon.xlsx",sheet = "pokemon")

#2
dim(pokemon)
nrow(pokemon)
ncol(pokemon)

#3
summary(pokemon)

#4
pokemon$generation = as.factor(pokemon$generation)
pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$type = as.factor(pokemon$type)

#5 Résumé
summary(pokemon)

#Exo 2
#1
mediane=median(pokemon$attack)
pokemon$attack_group = ifelse(test = pokemon$attack>=mediane , yes = "Attack+", no= "Attack-")
pokemon$attack_group=as.factor(pokemon$attack_group)
summary(pokemon$attack_group)

#2
pokemon$water_fire = ifelse(test = pokemon$type == "water" | pokemon$type == "fire", yes = "yes", no = "no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)

#3
attack_q3= quantile(pokemon$attack,probs = 0.75)
defense_q3= quantile(pokemon$defense,probs = 0.75)
speed_q3= quantile(pokemon$speed,probs = 0.75)
pokemon$best=ifelse(test=pokemon$attack >attack_q3 & pokemon$defense >defense_q3 & pokemon$speed >speed_q3, yes="yes",no="no")
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)

#fonction is.na()

#1
