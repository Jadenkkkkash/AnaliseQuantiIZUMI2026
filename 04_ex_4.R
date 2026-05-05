## =================
###   EXERCÍCIO 1
## =================


##### UTILIZANDO O DPLYR

library(dplyr)

##### PRECISAMOS UTILIZAR AMBAS VARIÁVEIS

setwd("C:/Users/Will/Downloads/aula06a-joins (1)")

eleitores <- read.csv("eleitores.csv", header = TRUE, sep = ",")

canditatos <- read.csv("candpref.csv", header = TRUE, sep = ",")


##### É NECESSÁRIO UTILIZAR DUAS CHAVES PRIMÁRIAS POIS O MESMO NÚMERO PODE SER UTILIZADO EM ANOS DIFERENTES


df <- left_join(eleitores, canditatos, by= c("COD_MUN","ELEICAO"))

## JÁ ADOTA BY= COD_MUN, ELEIÇÃO AUTOMATICAMENTE, MAS COLOQUEI


## =================
###   EXERCÍCIO 2
## =================  



coord <- read.csv("coords.csv", header = TRUE, sep = ",")


##### SE QUISER ADICIONAR TODOS OS DADOS DE AMBAS PLANILHAS, É MELHOR UTILIZAR O FULL_JOIN


df2 <- full_join(df, coord, by= "COD_MUN")   ### neste caso não é necessário BY= ELEICAO


## MAS.... ACABOU SURGINDO UMA LINHA A MAIS COM NA.. TALVEZ SEJA MAIS USUAL UTILIZAR O LEFT_JOIN


df2 <- left_join(df, coord, by= "COD_MUN") 



