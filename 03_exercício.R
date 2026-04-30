##
###   EXERCÍCIO 1
##



install.packages("dplyr")
install.packages("tidyr")

library(dplyr)
library(tidyr)

setwd("C:/Users/Will/Downloads/aula05-manipulacao")

dados <- read.csv("alcp_dd.csv", header=TRUE, sep= ",")

new_df <- select(dados$ctryname, dados$year, dados$democracy, dados$regime, dados$MOSLEM)

##
###    EXERCÍCIO 2
##

new_df <- dados %>%
  select(ctryname, year, democracy, regime, MOSLEM)

##
###   EXERCÍCIO 3
##

new_df <- arrange(new_df, year, desc(ctryname))

##
###   EXERCÍCIO 4
##

df <- filter(new_df, ctryname == "Venezuela, Uruguai" & year>1980)

##
###   EXERCÍCIO 5
##

df <- filter(new_df, MOSLEM == 1, )




##
###     EXERCÍCIO 8
##


