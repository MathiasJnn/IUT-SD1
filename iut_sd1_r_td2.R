# exo 1 "TELECHARGER DES DONNEES"
# 2 & 3 "AFFICHER REPERTOIRE & CHANGER REPERTOIRE"

setwd(dir = "L:/BUT/SD/Promo 2023/mjanin/R/dataset")
getwd()



#exo 4 "IMPORTER DATASET"

bodies_karts = read.csv(file="bodies_karts.csv",header = TRUE,dec = ",",sep = ";")
drivers = read.csv(file="drivers.csv",header = TRUE,dec = ",",sep = ";")
gliders = read.csv(file="gliders.csv",header = TRUE,dec = ".",sep = "|")
tires = read.csv(file="tires.csv",header = TRUE,dec = ",",sep = "\t")


#exo 5 "DIMENSION"

dim(bodies_karts)
dim(drivers)
dim(gliders)
dim(tires)

# -------------------------

#exo 1 "RÉSUMÉ"

summary(bodies_karts)
summary(drivers)
summary(gliders)
summary(tires)


#exo 2 "NUAGE DE POINTS"

plot(x = drivers$Weight , y = drivers$Acceleration, main = "Drivers : Weight / Acceleration")


#exo 3 "CALCUL DE CORRELATION"

cor(x = drivers$Weight , y = drivers$Acceleration, method ="spearman")


#exo 4 "COEFF DE CORRELATION MANUEL"

covariance= cov(x = drivers$Weight , y = drivers$Acceleration)
ET1= sd(drivers$Weight)
ET2=sd(drivers$Acceleration)
CORR_manuel=covariance/(ET1*ET2)
print(CORR_manuel)


#exo 5 "COEFF DE DETERMINATION"

coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)


#exo 6 "MATRICE CORR()"

matriceCor = cor(drivers[ , - 1])
matriceCor = round(matriceCor , 2)
View(matriceCor)
#Toutes les variables semblent fortement corrélées entre elles.


#exo 7 "INSTALLATION PACKAGE"
install.packages("corrplot")


#exo 8 "CORRELOGRAMME"

matriceCor = round(cor(tires[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE)
