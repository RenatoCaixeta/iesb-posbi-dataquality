mtcars
write.csv2(mtcars,"mtcars.csv")
str(mtcars)
carros<-read.csv("mtcars.csv",dec=",",sep=";")
carros
cadastro <-read.csv2("data/CadastroCPF.csv",stringsAsFactors = FALSE)



censo<-read.csv2("data/Censo.csv",stringsAsFactors=FALSE)

cadastro
str(censo)
names(censo)
View(censo)
nrow(censo)
censo[3]
censo$Altura.cm
censo[c(2,3)]
censo[c("Salario","AnosEstudo")]
min(censo[c("Altura.cm")])
altura<-censo$Altura.cm
summary(altura)
media.altura<-mean(altura)
desvio.altura<-sd(altura)
gigantes <-altura[altura>media.altura+4*desvio.altura]
gigantes<-gigantes/100
gigantes

str(censo)
view(censo)
censo$IMC
censo$IMC <- (censo$Peso.kg/(censo$Altura.cm/100))^2
censo[1:10,c("Nome")]
      
install.packages("dplyr")
library(dplyr)

fumantes.por.sexo <-censo%>%
     filter(Fuma==1)%>%
     group_by(Sexo)%>%
     summarise(quantidade=n())
View(fumantes.por.sexo)

hist(censo$Altura.cm)
