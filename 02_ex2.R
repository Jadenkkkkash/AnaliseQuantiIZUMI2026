# ======================
###  EXERCICIO 1
# ======================

setwd("C:/Users/Will/Downloads/aula04-dados/bussab21")

dados <- read.csv("tab21.csv", header = TRUE, dec = ",", fill = TRUE)


# ======================
###  EXERCICIO 2
# ======================

# estado civil

head(dados)

table(dados$estado_civil)

prop.table(table(dados$estado_civil))


# região

table(dados$regiao)

prop.table(table(dados$regiao))

# numero de filhos

table(dados$filhos)

prop.table(table(dados$filhos))



# ======================
###  EXERCICIO 3
# ======================

table(dados$idade)

cumsum(table(dados$idade)) #frequência acumulada da idade

prop.table(cumsum(table(dados$idade)))*100 #porcentagem acumulada da idade

sum(table(dados$idade))

dados

dados$idade

dados$idade<=35

soma_dados <-sum(dados$idade<=35)/36

soma_dados*100 # PORCENTAGENS DE EMPREGADOS < OU IGUAL A 35 ANOS



# ======================
###  EXERCICIO 4
# ======================

cruzamento <-table(dados$instrucao,dados$regiao)

addmargins(cruzamento)

ens_sup_capital <-2/11

ens_sup_capital*100 ## NA CAPITAL 18% POSSUEM ENS SUPERIOR

ens_fun_int <-3/12

ens_fun_int*100 # 25% DOS EMPREGADOS COM ENS FUNDAMENTAL SÃO NO INTERIOR


