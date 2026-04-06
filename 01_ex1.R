###### 1

sqrt(36)

##### 2

(27)^(1/3)

###### 3

x <- c(1,2,3,"a")

## o vetor está como caracter por possuir letra dentro do vetor.

###### 4

setwd("C:/Users/Will/Downloads/aula03-introR")

dados <- read.table("sen_x_votacao.txt", 
                    header = TRUE, 
                    sep = ";")


##### 5

tab <- c(dados)

tab$regiao <- ifelse(tab$UF %in% c("AC","AP","AM","PA","RO","RR","TO"), "Norte",
              ifelse(tab$UF %in% c("AL","BA","CE","MA","PB","PE","PI","RN","SE"), "Nordeste",
              ifelse(tab$UF %in% c("DF","GO","MT","MS"), "Centro-Oeste",
              ifelse(tab$UF %in% c("PR","RS","SC"), "Sul",
              ifelse(tab$UF %in% c("ES","MG","RJ","SP"), "Sudeste", NA)))))



##### 6

install.packages("readxl")
install.packages("writexl")
library(readxl)
library(writexl)


write_xlsx(dados, "tab.xlsx")

## deu erro a partir de "tab"



###### 7

x <- c("Xxxxxxxxx x x xxxxx xxxxxxx xx Xxxxx")

nchar(x)


####### 8

lengths(strsplit("Xxxxxxxxx x x xxxxx xxxxxxx xx Xxxxx"," "))


##### 9

Item <- c("Caderno", "Lápis", "Caneta", "Borracha", "Apontador", "Régua")
Quantidade <- c(10, 20, 20, 15, 5, 2)
PrecoUnitCompra <- c(15, 0.5, 1.5, 0.75, 2.5, 5)
PrecoUnitVenda <- c(20, 2, 2.5, 1.5, 7, 12)
tab2 <- data.frame(Item, Quantidade, PrecoUnitCompra, PrecoUnitVenda)

pagar <- tab2$Quantidade * tab2$PrecoUnitCompra
ganhar <-tab2$Quantidade * tab2$PrecoUnitVenda

lucro_total <- ganhar-pagar
lucro_total <- sum(lucro_total)
lucro_total


##### 10

PromoLapis<- tab2$PrecoUnitVenda[2]*0.1*tab2$Quantidade[2]
PromoCaneta<- tab2$PrecoUnitVenda[3]*0.1*tab2$Quantidade[3]

PromoTotal <- PromoCaneta+PromoLapis

lucro_total <- lucro_total-PromoTotal
