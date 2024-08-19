library(gcookbook)
library(ggplot2)

cabbage_exp <- cabbage_exp
cabbage_exp


ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + 
  geom_bar(stat="identity", position="dodge")



ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) + 
  geom_bar(stat="identity", position="dodge", colour="black")+
  scale_fill_brewer(palette="BluPu")


ce <- cabbage_exp[1:5, ]
ce


ggplot(ce, aes(x=Date, y=Weight, fill=Cultivar)) + geom_bar(stat="identity", position="dodge", colour="black")+
  scale_fill_brewer(palette="Pastel1")


diamonds <- diamonds

ggplot(diamonds, aes(x=cut)) + geom_bar()
ggplot(diamonds, aes(x=cut)) + geom_bar(stat="count")

table(diamonds$cut)
summary(diamonds$cut)

ggplot(diamonds, aes(x=carat)) + geom_histogram(colour="red",fill = 'blue')+
    theme_dark()


BOD
ggplot(BOD, aes(x=Time, y=demand)) + geom_line()
ggplot(BOD, aes(x=Time, y=demand)) + geom_line() + geom_point()


worldpop<-worldpop
ggplot(worldpop, aes(x=Year, y=Population)) + geom_line() + geom_point()

ggplot(worldpop, aes(x=Year, y=Population)) + geom_line() + geom_point() +
  scale_y_log10()


library(plyr)

tg
ggplot(tg, aes(x=dose, y=length, colour=supp)) + geom_line()


ggplot(tg, aes(x=dose, y=length, shape=supp)) +
  geom_line(position=position_dodge(0.2))+
  geom_point(position=position_dodge(0.2), size=2)


ggplot(diamonds, aes(x=depth , y = table, color = cut))+
geom_point()
       



library(MASS)
library(GGally)

Cars93 <- Cars93

cars.subset <- subset(x = Cars93, select = c(MPG.city, Price, Horsepower))
ggpairs(cars.subset)


ggplot(data = Cars93, aes(x=Cylinders, y= Horsepower)) + geom_boxplot()





