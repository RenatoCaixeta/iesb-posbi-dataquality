#Exercicio dentro de sala para normalizar a tabela de arquivo

source("src/principal.r")

censo <-reformata_censo(censo)
?summary(censo$DataNasc)

censo<-read.csv2("data/Censo.csv",stringsAsFactors=FALSE)
#calculo para cfp errado
#Validação do primeiro dígito
#Primeiramente multiplica-se os 9 primeiros dígitos pela sequência decrescente de números de 10 à 2 e soma os resultados. Assim:
#
#  5 * 10 + 2 * 9 + 9 * 8 + 9 * 7 + 8 * 6 + 2 * 5 + 2 * 4 + 4 * 3 + 7 * 2


cpf <- "05394127670"

library(stringr)

validacpfprimeirodigito<-function(cpf){
  #if(str_length(cpf)==11){
  #teste do tamano do cpf
  k=10  
  resultado = 0
  for(i in 1:9)  {
   # print(k)
    resultado<- resultado + as.numeric(substring(cpf,i,i)) * k 
    print(resultado)
    k <-k-1
  }
  resultado = (resultado *10)%% 11
  if(resultado==10){
    resultado = 0
  }else{  
    if(resultado==substring(cpf,10,10)) {
      #print("CPF valido")
      validacao <-TRUE
    }else{
      #print("CPF invalido")
      validacao <-FALSE
    }
  }
  return(validacao)
}

validacpfsegundodigito<-function(cpf){
  k=11
  resultado=0
  for(i in 1:10)  {
    resultado<- resultado + as.numeric(substring(cpf,i,i)) * k 
    #print(resultado)
    k <-k-1
  }
  resultado = (resultado *10)%% 11
  if(resultado==10){
    resultado = 0
  }else{  
    if(resultado==substring(cpf,11,11)) {
      #validacao<-("CPF valido")
        validacao<-TRUE
      }else{
      #validacao<-("CPF invalido")
        validacao<-FALSE  
    }
  }
  return(validacao)
}
cpf<-05394127670
validacpf<-function(validacpfprimeirodigito,validacpfsegundodigito){
  if(validacpfprimeirodigito&&validacpfsegundodigito()){
    
    
  }
  
}
print(validacpf)









