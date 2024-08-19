#====================================================================

rm(list = ls())

setwd("~/Dropbox/VídeosAulas/r_iniciantes/video_aula_05")

#====================================================================
# slide 2: Summary
#====================================================================

library(ggplot2)

#===============================================================================
# 
#===============================================================================

mtcars <- mtcars 
plot(mtcars$wt, mtcars$mpg)

#===============================================================================
#
#===============================================================================

g<- ggplot(mtcars, aes(x=wt, y=mpg))
g <- g + geom_point()
g

#===============================================================================
#
#===============================================================================

pressure <- pressure
plot(pressure$temperature, pressure$pressure, type="l")
points(pressure$temperature, pressure$pressure)
lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="red")

#===============================================================================
#
#===============================================================================

g <- ggplot(pressure, aes(x=temperature, y=pressure)) 
g <-  g + geom_line()
g <-  g + geom_point()
g

#===============================================================================
#
#===============================================================================

BOD <- BOD
BOD

barplot(BOD$Time, BOD$demand)
grafico_01 <-ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat="identity")


#===============================================================================
#
#===============================================================================

mtcars 

t<- table(mtcars$cyl)
barplot(t)

barplot(table(mtcars$cyl))

table(mtcars$cyl) %>% barplot()

mtcars<- mtcars


ggplot(mtcars, aes(x=cyl)) + geom_bar()

#===============================================================================
#
#===============================================================================

mtcars
hist(mtcars$mpg)
hist(mtcars$mpg, breaks=10)
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth=4)


#===============================================================================
#
#===============================================================================

ToothGrowth <- ToothGrowth
# Formula syntax
boxplot(len ~ supp, data = ToothGrowth)
boxplot(len ~ supp + dose, data = ToothGrowth)

boxplot(ToothGrowth$len ~ ToothGrowth$supp)


#===============================================================================
#
#===============================================================================

ToothGrowth
ggplot(ToothGrowth, aes(x=supp, y=len)) + geom_boxplot()

ggplot(ToothGrowth, aes(x=interaction(supp, dose), y=len))+geom_boxplot()+
  labs(title = "Gráfico 01",
       subtitle = "data 2020-03-29",
       x="Dose",
       y="LENNNNNN")



#===============================================================================
#
#===============================================================================
curve(x^3 - 5*x, from=-4, to=4, type="b", col="blue", pch="o")


x  <-1:10
df <-data.frame(x)

ggplot(df,aes(x))+ stat_function(fun=function(x) log(x))

#===============================================================================
#
#===============================================================================

library(gcookbook)
library(ggplot2)
pg_mean
ggplot(pg_mean, aes(x=group, y=weight)) + geom_bar(stat="identity")


BOD<-BOD

str(BOD)
ggplot(BOD, aes(x=Time, y=demand)) + geom_bar(stat="identity")
ggplot(BOD, aes(x=factor(Time), y=demand)) + geom_bar(stat="identity")

ggplot(pg_mean, aes(x=group, y=weight)) +
  geom_bar(stat="identity", fill="lightblue", colour="black")+
  labs(title =" Gráfico de Barra",
       caption = "fonte: Guterres",
       subtitle = "2020-03-5", 
       x ="Grupo", 
       y ="Peso")

# Título: Gráfico de Barras
# subtitulo : data
# nome do eixo y - Peso
# nome do eixo x - Grupo


#===============================================================================
#
#===============================================================================

library(gcookbook) # For the data set
cabbage_exp

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + 
  geom_bar(stat="identity", position="dodge")+
  labs(title =" Gráfico de Barra",
       caption = "fonte: Guterres",
       subtitle = "2020-03-5", 
       x ="Grupo", 
       y ="Peso")





