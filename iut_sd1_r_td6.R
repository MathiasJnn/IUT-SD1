#exo 1
setwd(dir = "L:/BUT/SD/Promo 2023/mjanin/R")
df <- read.csv(file = "nba2014_2015.csv", sep = ",",
               header = TRUE, dec = ".")
nrow(df)
ncol(df)
colnames(df)
df$PERIOD = as.factor(df$PERIOD)
df$PTS_TYPE = as.factor(df$PTS_TYPE)
df$SHOOTER = as.factor(df$SHOOTER)

#exo 2
length(levels(df$PERIOD))
length(df$PTS_TYPE)
length(df$SHOOTER)
summary(df)
sd(df$SHOT_DIST)
sd(df$SHOT_CLOCK,na.rm =TRUE)
     
#combien de tirs manqués/réussis
table(df[ "SHOT_RESULT" ])
#les quartiles
quantile(df$SHOT_CLOCK, probs = .4,na.rm=TRUE)
#les déciles
quantile(df$CLOSE_DEF_DIST, probs = seq(from=0,to=1,by=0.1),na.rm=TRUE)
#nombre de matches différents
liste_game = unique(df$GAME_ID)
length(liste_game)
#nombre de joueurs différents
df$SHOOTER = as.factor(df$SHOOTER)
nlevels(df$SHOOTER)
#conversion de la variable SHOT_DIST en mètre pour que les européens comprennent nos chiffres
df$SHOT_DIST_METRE = df$SHOT_DIST * 0.30
#nombre de points qu'a rapporté la tentative (0,2 ou 3)  
df$PTS_MARQUES <- ifelse(df$SHOT_RESULT == "made", yes = df$PTS_TYPE,no= 0)
#On supprime la variable GAME_RESULT car elle n'est pas utile
df$GAME_RESULT=NULL
       
#création d'un objet sans la première colonne GAME_ID
df2 <- df[ , -1 ]
