# exercice 1

a=10
b=5
resultat=a*b
print(resultat)
A=7.2
B=10.1  # on voit que la casse est importante
resultat=A+B # nouvelle affectation du resultat
rm(a,A,b,B,resultat)



# exercice 2
# 1
v1=c(1,2,3,4,5)
class(v1)
v1[3]

# 2
v2=v1+3
v2

# 3
v3= 1:6
v3

# 4
v4=v3**2
v4

# 5
v5=v4/2
v5

rm(v1,v2,v3,v4,v5)

# 6 
semaine=c("lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche")
class(semaine)
semaine[c(2,7)]
rm(semaine)

# 7
vect=c("true","false","true","false","false")
class(vect)
rm(vect)

# 8
nbdec=c(3.5,8.2,6.9,3.4,2.2,0.1,0.8,7.5)
class(nbdec)
nbdec[-3]
rm(nbdec)

# 9
annee=c("janvier","février","mars","avril","mai","juin","juillet","août","septembre","octobre","novembre","décembre")
class(annee)
annee[c(1,2,3)]
rm(annee)

# 10
nb=c(-3,-5,-2.1,-6.9)
class(nb)
nb[c(4,1)]
rm(nb)

# 11
fruit=c("fraise","banane","pomme","poire")
class(fruit)
fruit[c(-1,-2)]  #ou [-c(1,2)]
rm(fruit)

# 12
val=c(6,8,NA,1)
class(val)
rm(val)

# fonctions

# 1
sequence=seq(from=1,to=10,by=1)
length(sequence)
rm(sequence)

# 2
seqpair=seq(from=2,to=20,by=2)
length(seqpair)
rm(seqpair)

# 3
seqdec=seq(from=0,to=-5)
length(seqdec)
rm(seqdec)

# 4
nb=seq(from=5,to=50,by=5)
length(nb)
rm(nb)

# 5
seqdec=seq(from=10,to=1)
length(seqdec)
rm(seqdec)

# 6
seq=seq(from=0,to=1,by=0.1)
length(seq)
rm(seq)

# 7
seqdec=seq(from=5,to=-5,by=-1)
length(seqdec)
rm(seqdec)

# 8
seq=seq(from=1,to=10,by=2)
length(seq)
rm(seq)

# fonctions
#1


