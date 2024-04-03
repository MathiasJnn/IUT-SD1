setwd() #pas oublier de copier coller ici ci j'ai fait CTRL SHIFT H

fichiers=list.files(path = "L:/BUT/SD/Promo 2023/mjanin/R/nba",pattern = ".csv$",full.names = TRUE)

nom_fichier=basename(fichiers)

nom_fichier_sans_ext=file_path_sans_ext(nom_fichier)

assign(nom_fichier_sans_ext,value = read.csv(file=fichier[1],header=TRUE,sep=",",dec="."))

for (fichier in fichiers) {
  nom_fichier=file_path_sans_ext(basename(fichier))
  assign(nom_fichier,read.csv(fichier,sep=",",dec="."))
}
# ville avec seulement los angeles
df_x = subset(team, city == "Los Angeles", select = c("id", "city"))

df_y = subset(game, select = c("game_id", "team_id_home"))

dfJoin = merge(x = df_x, y = df_y, 
               by.x = "id", 
               by.y = "team_id_home", 
               all.x = TRUE)
nrow(dfJoin)
View(dfJoin)

df_x = dfJoin
df_y = subset(game_info, select = c("game_id", "attendance"))
dfJoin = merge(x = df_x, y = df_y, 
               by = "game_id",
               all.x = TRUE)
mean(dfJoin$attendance, na.rm = TRUE)
View(dfJoin)