#DataFrame

frutas <- c("banana", "maça", "manga")
vendas <- c(30,100,40)
importada <- c(FALSE, TRUE, FALSE)


quitanda <- data.frame (frutas, vendas, importada)


## ACESSAR ELEMENTOS DO DATA FRAME 

frutas[2]
quitanda [2,1]
quitanda [,2]
quitanda$importada

quitanda [c(1),] ### primeira linha
quitanda [c(1)] #### COLUNA


### diretório de trabalho

setwd("C:/Users/wilson.brito/Downloads")


getwd()

# SALVAR IMAGEM

save.image("aula1.R")


tab <- read.csv ("candidatos.csv", fileEncoding = "latini") #### FILE ENCODING !!!!! para o s/n
View(tab)
help(read.csv)
head(tab)
tail(tab)

install.packages("readxl")


## CARREGAR PACOTE
library(readxl)


write.csv(tab,"candidatos2.csv")


##maximos e minimos

max(tab$VV1T)
min(tab$VV1T)


#tabulações
table(tab$SGL_UF)


table(tab$SGL_UF, tab$eleito)


table(tab$SEXO)


### FUNÇÃO IFELSE

## IFELSE (TESTE LÓGICO, SE FOR VERDADE, SE FOR FALSO)


x <- c(1, 2, 3, 4, 5)

ifelse(x>3, "maior", "menor ou igual")

x>3


##### OPERADORES LOGICOS

## == igual
## != diferente
## < menor
## > maior
## <= menor ou igual
## & E
## | OU


### recodificou e variável sexo

table(tab$SEXO)

tab2 <-  ifelse (tab$SEXO=="FEMININO", "Feminino", tab$SEXO) ### eu tava tentando usar o  | "Feminino" KKKKKKKK não precisa carai, já tá o Feminino rrrsrs

tab2

tab3 <- ifelse (tab$SEXO=="MASCULINO", "Feminino", tab2)

tab3

table (tab3)


#### OK DOIS IFELSE


tab$SEXO <- ifelse (tab$SEXO == "FEMININO", "Feminino",
                    ifelse (tab$SEXO == "MASCULINO", "Masculino", tab$SEXO))


#### TESTE SOBRE IF ELSE

teste <- ifelse (x <3, "Menor que 3",
                 ifelse(x>8, "Maior que 8", "Entre 3 e 8"))

res <- data.frame (x,teste)





