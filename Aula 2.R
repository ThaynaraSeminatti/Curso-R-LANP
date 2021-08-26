#manipulando um pouco os dados com dplyr

#install.packges("tidyverse") esse pacote inclui o tidyverse e outros que
#sao bem importantes, como o ggplot, se vcs quiserem podem baixar separado
#apenas com install.packges("dpylr")

library(tidyverse)

library("readxl")

imbl<-read.csv("imbl.csv", sep = ";",dec = ",", encoding = "ANSI")

table(imbl$cor)#ou outra variavel categorica

#usandoo pipe %>% 
#atalho Ctrl+Shift+m

#adc uma nova variavel
imbl.mutate<-imbl %>%
  mutate(duracao.horas=duracao/60)



#selecionando ou tirando variavel pelo nome
imbl.select<-imbl %>% 
  select(titulo, ano, nota_imdb, cor)#selecionou

imbl.select1<-imbl %>% 
  select(-titulo)#tirou



#reagrupando
imbl.arrange<-imbl %>% 
  arrange(ator_1)#desc para deixar decrescente 



#filtrando
imbl.filter<-imbl %>% 
  filter(ano==2015 & classificacao=="Livre")



#agrupando e reduzindo
imbl.group<-imbl %>% 
  group_by(classificacao) %>% 
  summarise(media=mean(orcamento))

