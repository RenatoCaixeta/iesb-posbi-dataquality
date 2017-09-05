#Autor: Renato Caixeta Amâncio

rnorm(10)


hist(rnorm(1000))
x=1
y=5
vetor <- c(1,2,3,4,5,6,7,8,9,x,y)
vetor[11]
texto<-c("opa","denovo","traveis")
texto[3]
logico<-c(TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE)
as.numeric(logico)

str(vetor)
str(x)
str(y)
length(vetor)
length(1:150)
texto[length(5)]
choose(20,2)
lenght(texto[2])
x<-c(10,25,150)
sum(x)
cumsum(x)
cumprod(x)
median(x)
sd(x)
mean(x)
set.seed(1)
horas_trabalhadas<-rnorm(1000,8,0.5)
valor_por_hora<-rnorm(1000,30,2)
horas_trabalhadas
valor_por_hora[1]

class(horas_trabalhadas)
class(valor_por_hora)
length(valor_por_hora)
length(horas_trabalhadas)
max(horas_trabalhadas)
min(horas_trabalhadas)
max(valor_por_hora)
min(valor_por_hora)
valores <-c(horas_trabalhadas*valor_por_hora)
valores
horas_trabalhadas[1] 
valor_por_hora[1]
horas_trabalhadas[1]*valor_por_hora[1]
valores[1]
max(valores)
min(valores)
sum(valores)
str(horas_trabalhadas)
str(valor_por_hora)
getwd()
