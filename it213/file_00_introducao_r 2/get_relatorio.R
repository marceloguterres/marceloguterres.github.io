library(ggplot2)
library(dplyr)
library(corrplot)

get_relatorio <- function()
{
  load("mat.Rda")
  
  df_mat <- mat
  
  grf_01<-ggplot(df_mat,aes(x=MAT1,y=MAT2))+geom_point()
  
  tab_medias <- df_mat %>% group_by(TIPO) %>% summarize(MED_01 = mean(MAT1),
                                                        MED_02 = mean(MAT2))
  valeu_cor <- cor(df_mat$MAT1,df_mat$MAT2)
  
  n_obs  <-NROW(df_mat)
  
  grf_hist_mat1 <- ggplot(df_mat, aes(x=MAT1))+
    geom_histogram(colour="tomato",fill="white")
  
  
  grf_hist_mat2 <- ggplot(df_mat, aes(x=MAT2))+
                   geom_histogram(colour="tomato",fill="white")
  
  teste_mat_01 <- shapiro.test(df_mat$MAT1)
  teste_mat_02 <- shapiro.test(df_mat$MAT2)
  
  grafico_boxplot <- 5 # boxplot(df_mat$MAT1, df_mat$MAT2)
  
  teste_medias <- t.test(df_mat$MAT1, df_mat$MAT2)
  valor_p      <- teste_medias$p.value
  
  outputs <-list(df_mat, #1
                 grf_01, #2
                 tab_medias, #3
                 valeu_cor, #4
                 n_obs, #5
                 grf_hist_mat1, #6
                 grf_hist_mat2,#7
                 teste_mat_01,#8
                 teste_mat_02,#9
                 grafico_boxplot,#10
                 teste_medias, #11
                 valor_p)#12
  
  return(outputs)
}







