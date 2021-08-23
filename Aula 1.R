#curso R

#Introducao----

#deixar o ambiente simpatico

#tools/global options/pane layout

#tools/global options/Apperence

#escolher diretorio Ctrl+Shit+H ou Session/Set Working Directory / Chose Directory

#Criando variaveis----
#clique em Ctrl+Enter para rodar as linhas

a<-15
a

b=10
b

c->10 #da errado
10->c

#vamos usar sempre a '<-' para evitar problemas

#Operações----

10+15-10

a+b-c

d<-a+b-c

#somando caracter

J<-"joao"
L<-"luiza"

JeL<-J+L
JeL

JeL<-c(J,L)
JeL
#c() é uma funcao
?c()

#funcoes---

a<-c(10,20,30,40)

summary(a)

summary(JeL)

#essas funçoes ja estao no r base
#como usar uma funcao fora do r base?

#1 instalar o pacote caso nao tenha com install.packeges("nome do pacote")
#2 chamar o pacote library("nome do pacote")
