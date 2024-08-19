#====================================================================

rm(list = ls())

setwd("~/Dropbox/VídeosAulas/r_iniciantes/video_aula_05")

#====================================================================
# slide 2: Summary
#====================================================================


library(stringr)
library(dplyr)

#===============================================================================
# slide 6: Normalizando strings com  dplyr e stringr
#===============================================================================

df <- df %>%  mutate_if(is.character,tolower)
df <- df %>%  mutate_if(is.character, str_trim)



#===============================================================================
# slide 9: Variáveis categóricas
#===============================================================================

summary(df)

df <- df %>%  mutate_if(is.character, as.factor)



#===============================================================================
# slide 10: Descrição univariada - Variáveis categóricas
#===============================================================================


tab_resultado_abs <- table(df$resultado)
tab_resultado_abs
pie(tab_resultado_abs,main ="pizza",leg = T, col=blues9)
barplot(tab_resultado_abs, beside=T, col=blues9)


tab_resultado_rel <- prop.table(table(df$resultado))*100
tab_resultado_rel 
pie(tab_resultado_rel)


barplot(tab_resultado_rel,  beside=T, leg=T)


#===============================================================================
# slide 11: Descrição univariada - Variáveis categóricas
#===============================================================================

tab_resultado_cruzado <- table(df$partido, df$sexo)
tab_resultado_cruzado  

tab_resultado_cruzado_rel <- prop.table(tab_resultado_cruzado)
tab_resultado_cruzado_rel 

barplot(tab_resultado_cruzado_rel , beside=T, col=blues9)
      


#===============================================================================
# slide 13: Tabelas de Frequência para variáveis contínuas
#===============================================================================


factors_logvotos <- cut(df$logvotos, breaks = c(10,12,14),  labels = c("10-12","12-14"))
table_freq_votos <- table(factors_logvotos)
table_freq_votos
barplot(table_freq_votos,col="powderblue")

table_freq_votos  <- table (factors_logvotos, df$resultado)   
table_freq_votos


#===============================================================================
# slide 14: Estatísticas descritivas
#===============================================================================

summary(df$logvotos)
mean(df$logvotos)
sd(df$logvotos)
median(df$logvotos)
boxplot(df$logvotos, main ="Log vostos", col="darksalmon")
hist(df$logvotos , main ="Log vostos", ylab= "Frequência", xlab = "logvostos",col ="beige")
