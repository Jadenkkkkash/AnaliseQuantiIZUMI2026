#### EXERCICIOS




### 1


renda <- c(1200, 2500, 1800, 4000, 3200, 1500, 2200)

min(renda)
max(renda)

ifelse (renda > 2000, renda, "não")

sum(renda >2000)


#### 2

idade <- c(18, 22, 35, 40, 28, 19, 60)

teste <- ifelse (idade > 30, "sim", "não")

teste <- idade > 30 ### PROFESSOR

teste 

table (teste)

sum(teste)


sum (teste)/7  ### PROPORÇÃO


sum (teste) / length(teste) * 100


#### 3

voto <- c(1, 1, 0, 1, 0, 0, 1)

table (voto)

sum(voto)

length(voto) - sum(voto)


sum(voto) / length (voto) ### porcentagem



##### 4


classe <- ifelse (renda < 2000, "baixa",
          ifelse (renda >3000, "alta", "média"))

classe <- ifelse (renda < 2000, "baixa",
          ifelse (renda <= 2000 & renda <= 3000, "média", "alta"))   #### PROFESSOR FEZ ASSIM

classe



##### 5

faixa_etaria <- ifelse (idade <30, "jovem",
                        ifelse (idade>= 60, "idoso", "adulto"))  #### eu fiz essa ta certo, mas é bom verificar caso tenha conflito


faixa_etaria <- ifelse (idade <30, "jovem",
                ifelse (idade >=30 & idade <=59, "adulto", "idoso")


faixa_etaria



##### 6

dados <- data.frame(idade, renda, voto, classe, faixa_etaria)


##### 7 EU TENTANDO

max(renda > 2000) & max(idade > 30)


max(renda>3000) | min(idade <25)


###### 6 SEGUNDO O PROFESSOR

dados$rico <- ifelse(dados$renda > 3000, 1, 0)

dados


sum (dados$rico)/nrow(dados)    # nrow é o numero de linhas do data frame


###### 6C


temp <- dados[dados$voto==1,"rico"]

temp

sum (temp)/length(temp)  #### length eh o comprimento



##### 7 PROFESSOR


dados[dados$renda > 3000 | idade <25,]



##### 8

dados [2,"voto"] <- 0

###OU

dados{2,3] <- 0 #### DEU ERRO.... TALVEZ Q JA TINHA EDITADO????

dados



