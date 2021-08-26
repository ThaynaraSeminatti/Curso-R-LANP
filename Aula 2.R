#manipulando um pouco os dados com dplyr

#install.packges("tidyverse") esse pacote inclui o tidyverse e outros que
#sao bem importantes, como o ggplot, se vcs quiserem podem baixar separado
#apenas com install.packges("dpylr")

library(tidyverse)

library("readxl")

imdb<-read.csv("imdb.csv", sep = ";",dec = ",", encoding = "ANSI")

table(imdb$cor)#ou outra variavel categorica

#usandoo pipe %>% 
#atalho Ctrl+Shift+m

#adc uma nova variavel
imdb.mutate<-imdb %>%
  mutate(duracao.horas=duracao/60)



#selecionando ou tirando variavel pelo nome
imdb.select<-imdb %>% 
  select(titulo, ano, nota_imdb, cor)#selecionou

imdb.select1<-imdb %>% 
  select(-titulo)#tirou



#reagrupando
imdb.arrange<-imdb %>% 
  arrange(ator_1)#desc para deixar decrescente 



#filtrando
imdb.filter<-imdb %>% 
  filter(ano==2015 & classificacao=="Livre")



#agrupando e reduzindo
imdb.group<-imdb %>% 
  group_by(classificacao) %>% 
  summarise(mediaNota=mean(nota_imdb))

