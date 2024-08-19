rm(list = ls())


#====================================================================


#====================================================================
# slide 3: Criando Data Frames 
#====================================================================

int_vec <- c(1,2,3) 
char_vec <- c("a", "b", "c")
bool_vec <- c(TRUE, TRUE, FALSE)
data_frame <- data.frame(int_vec, char_vec,bool_vec)
print(data_frame)
str(data_frame)

#====================================================================
# slide 5: Criando Data Frames 
#====================================================================


employee_data <- data.frame(
  id = c (1:5),
  name = c("James","Harry","Shinji","Jim","Oliver"),
  sal = c(642.3,535.2,681.0,739.0,925.26),
  date = as.Date(c("2013-02-04", "2017-06-21", "2012-11-14", "2018-05-19","2016-03-25")),
  stringsAsFactors = FALSE)

print(employee_data)

#====================================================================
# slide 6: Extraia colunas específicas
#====================================================================

output <- data.frame(employee_data$name, employee_data$id)

print(output)


#====================================================================
# slide 7: Extraia as duas primeiras linhas e depois todas as colunas
#====================================================================


output <- employee_data[1:2,]
print(output)  


#====================================================================
# slide 8: Extraia a 1ª e 2ª linha com a 3ª e 4ª colunas 
#====================================================================

result <- employee_data[c(1,2),c(3,4)]
print(result) 


#====================================================================
# slide 9: Adicione a coluna “departamento”
#====================================================================


employee_data$dept <- c("TI","Finanças","Operações","RH","Administração")
print(employee_data) 



#====================================================================
# slide 10: Adicionar linha
#====================================================================


employee_new_data <- data.frame(
                     id   = c (6:8),
                     name = c("Aman", "Piyush", "Aakash"),
                     sal  = c(523.0,721.3,622.8),
                     date = as.Date(c("2015-06-22","2016-04-30","2011-03-17")),
                     dept = c("Administração","Operações","Finanças"),
                     stringsAsFactors = FALSE)


employee_out_data <- rbind(employee_data,employee_new_data)
employee_out_data 


