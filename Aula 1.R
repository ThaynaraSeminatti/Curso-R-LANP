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

#Funcoes----

a<-c(10,20,30,40)

summary(a)

summary(JeL)

#essas funçoes ja estao no r base
#como usar uma funcao fora do r base?

#1 instalar o pacote caso nao tenha com install.packeges("nome do pacote")
#2 chamar o pacote library("nome do pacote")

install.packages('stringr')
library(stringr)

?str_c

nome<-"Thaynara"
sobrenome<-"Seminatti"
str_c(nome,sobrenome)

str_c(nome," ",sobrenome)

#Operadores----
#soma
b+c
10+20

#subtracao
b-d
10-20

#divisao
c/b
10/10

#multiplicacao
d*b
10*60

#potencia
b**2
b^2
2^2
2**2

#identico
b==c
b==d


#diferente
b!=c
d!=c

#maior
10>50
50>10
50>=50

#menor
10<50
50<10
10<=50

#ou
10>50 | 7>12
10<50 | 7>12

#e
10>50 & 7>12
10<50 | 7<12

#negação
10<50
!10<50


