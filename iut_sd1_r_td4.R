df=read.csv("velov.csv",header = TRUE,sep= ";",dec = ",")
summary(df)
class(df$status)
class(df$CodePostal)
df$status=as.factor(df$status)
df$CodePostal=as.factor(df$CodePostal)
df$bornes = ifelse(df$capacity != (df$bikes+df$stands), "KO", "OK")

hist(df$capacity, main= "Distribution de capacity")
hist(df$capacity, main= "Distribution de capacity",breaks=6)
hist(df$capacity, main= "Distribution de capacity",breaks=6,col="red")
hist(df$capacity, main= "Distribution de capacity",breaks=6,col="red",xlab = "Capacity")

abline(h=100,col="blue",lty=2)

hist(x = df$capacity, 
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity")

lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lwd = 4)

hist(x = df$capacity, 
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity",
     ylim = c(0,0.08))

lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lwd = 2)

boxplot(df$capacity,main="distribution capacity",horizontal = TRUE)
boxplot(df$capacity,main="distribution capacity", outline = FALSE)

points(mean(df$capacity), col = "red", pch = 15, cex = 2)

