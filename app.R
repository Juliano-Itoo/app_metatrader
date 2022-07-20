

#Aqui vem a programação para importar o dados:


# Instalando e Chamando pacote mt5R

devtools :: install_github ("Kinzel/mt5R", force = T)
library (mt5R)
library(quantmod)

#Definindo quantidade de pregoes para 05 minutos -  2022 ate 20/07

dolF = MT5.GetSymbol("DOL$", iTF = 5, iRows = 14869, xts = T)
View(dolF)

dolF <- timeSeries::as.timeSeries(na.omit(dolF))

#Chamando todos os dados
quantmod::chartSeries(dolF, theme = "black", name = "DOL$")

#Exportar dados para csv

write.csv(dolF, file = "C:/Users/jjuli/Documents/Projetos R/orientacao_r/dolF.csv" , sep = ";")


