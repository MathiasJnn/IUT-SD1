#1
salaire_net_cadre = function(salaire_brut)
{
  salaire_net_avant_impot = salaire_brut * 0.75
  return(salaire_net_avant_impot) 
}
salaire_net_cadre(salaire_brut = 2567)

#2
salaire_net_cadre = function(salaire_brut=2500)
{
  salaire_net_avant_impot = salaire_brut * 0.75
  return(salaire_net_avant_impot) 
}
salaire_net_cadre()

#3
salaire_net_cadre=function(salaire_brut, temps_travail=1)
{
  salaire_net_avant_impot = salaire_brut *0.75*temps_travail
  return(salaire_net_avant_impot)
}
salaire_net_cadre(salaire_brut = 3000,temps_travail = 0.5)




#if
salaire_net_cadre=function(salaire_brut, temps_travail=1)
{
  if (!is.numeric(salaire_brut)){
    return("Erreur:il faut entrer des valeurs numériques")
  }
  if (!is.numeric(temps_travail)| (temps_travail<0)|(temps_travail>1)){
    return("Erreur:il faut entrer des valeurs numériques entre 0 et 1.")
  }
  salaire_net_avant_impot = salaire_brut *0.75*temps_travail
  return(salaire_net_avant_impot)
}
salaire_net_cadre(salaire_brut = 3000,temps_travail = 0.8)



#else
salaire_net = function(salaire_brut = 2500,temps_travail = 1, statut) {
  
  if (!is.numeric(salaire_brut)) {
    return("Erreur :  le salaire brut doit être une valeur numérique")
  }
  
  if (!is.numeric(temps_travail)) {
    return("Erreur :  le temps de travail doit doit être une valeur numérique")
  }
  
  if ( (temps_travail > 1) | (temps_travail < 0)) {
    return("Erreur :  le temps de travail doit être une valeur numérique entre 0 et 1")
  }
  
  if (!statut %in% c("cadre","non cadre")) {
    return("Erreur :  le statut doit être cadre ou non cadre")
  }
  
  if (statut == "cadre") {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.75
  } else {
    salaire_net_avant_impot = salaire_brut * temps_travail * 0.78
  }
  
  return(salaire_net_avant_impot) 
}
#Test de la fonction
salaire_net(salaire_brut = 2000, statut = "cadre")
salaire_net(salaire_brut = 2000, statut = "non cadre")
salaire_net(salaire_brut = 2000, statut = "technicien")


#exercice 2
resultat = 0
for (i in 1:5){
  resultat=resultat+i
  print(resultat)}

