## Aula do dia 2020-03-08
#====================================================================

rm(list = ls())

#====================================================================
### SLIDE 05: 
#====================================================================
num <- 1.2
print(num)
class(num)
str(num)


int <- as.integer(2.2)
print(int)
class(int)


char <- "datacamp"
print(char)
class(char)


char <- "12345"
print(char)
class(char)

#====================================================================
### SLIDE 06: 
#====================================================================

logical_true <- 3 > 1
print(logical_true)
class(logical_true)

logical_false <- 1 > 1
print(logical_false)
class(logical_false)


#====================================================================
### SLIDE 07
#====================================================================

vec_num <- c(1,50,9,42)
print(vec_num)
class(vec_num)
str(vec_num)

vec_cha <- c("A","B","C","D")
print(vec_cha)
class(vec_cha)
str(vec_cha)


#====================================================================
### SLIDE 08
#====================================================================

vec_logical <- c(TRUE,F, FALSE, T)
print(vec_logical)
class(vec_logical)

vec_char<-c("A",9,"C",52)
print(vec_char)
class(vec_char)



#====================================================================
### SLIDE 09
#====================================================================

vec_fac <- c("F","M","M","F")
vec_fac <- as.factor(vec_fac)
class(vec_fac)
str(vec_fac)


vec_fac <- c("LOW","HIGH","MEDIUM","HIGH")
vec_fac <- as.factor(vec_fac)
class(vec_fac)
str(vec_fac)


#====================================================================
### SLIDE 11
#====================================================================

vetor <- 1:20
print(vetor)
A <- matrix(vetor, 4, 5)
print(A)

print(vetor)
B <- matrix(vetor, 5, 4,byrow = TRUE)
print(B)        
        


#====================================================================
### SLIDE 12
#====================================================================

v1 <- c("SP","RJ","MG")
v2 <- c("RN","MT","AM")
v3 <- c("PE","RS","SC")
B  <- rbind(v1, v2, v3)


n1 <- 1:6
n2 <- 12:17
n3 <- 24:29
C <- cbind(n1, n2, n3)
class(C)


#====================================================================
### SLIDE 13
#====================================================================


x1 <- c("A","B","C")
x2 <- c("102","40","12")
x3 <- c("HELA","BHK","HESC")
x4 <- c(TRUE, FALSE, TRUE)
x5 <- c(5,5,8)
df <-  data.frame(x1,x2,x3,x4,x5)  
df$x2 <-as.numeric(df$x2) 
df$x6 <- df$x2 + df$x5
media <-mean(df$x2)
summary(df)

names(df) <- c("LETRA", "NUMERO", "SIGLA" , "LOGICO")
print(df)

plot(df$x6,df$x2)
vetor<- df$x2
#====================================================================
### SLIDE 15
#====================================================================


vec <- c(1,2,3)
char_vec <- c("Hadoop", "Spark", "Flink", "Mahout")
logic_vec <- c(TRUE, FALSE, TRUE, FALSE)
out_list <- list(vec, char_vec, logic_vec)
out_list


#====================================================================
### SLIDE 16
#====================================================================


list_data <- list("Red", "White", c(1,2,3), TRUE, 22.4)
print(list_data)


data_list <- list(c("Jan","Feb","Mar"), matrix(c(1,2,3,4,-1,9), nrow = 2),list("Red",12.3))
names(data_list) <- c("Monat", "Matrix", "Misc")
print(data_list)


