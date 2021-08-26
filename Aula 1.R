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
JeL[1]

#c() é uma funcao
?c()

#Funcoes----

numeros<-c(15,23,15,32,23)

summary(numeros)

summary(JeL)

numeros<-as.factor(numeros)
summary(numeros)


#essas funçoes ja estao no r base
#como usar uma funcao fora do r base?

#1 instalar o pacote caso nao tenha com install.packeges("nome do pacote")
#2 chamar o pacote library("nome do pacote")

#install.packages('stringr')
library(stringr)

?str_c

nome<-"Thaynara"
sobrenome<-"Seminatti"
str_c(nome,sobrenome)


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
10<50 & 7<12

#negação
10<50
!10<50

#Vetores----

is.vector(JeL)
mode(JeL)

is.vector(numeros)
mode(numeros)

numeros1<-c(2,3,"4",5)
is.vector(numeros1)
mode(numeros1)

#Matrizes----
#criando uma matriz qualquer
m<-matrix(1:16, nrow=4)
m

#acessando um valor dela
m[1,3]

#mudando valor 
m[1,3]<-"a"
m

#Data Frames----

#criando data frame

nome<-c("joao","maria","antonio")
peso=c(70,62,90)
altura<-c(1.75,1.60,1.85)

data<-data.frame(nome,peso,altura)

#outra maneira, colocando direto (mais usual)

data<-data.frame(nome=c("joao","maria","antonio"),
                 peso=c(70,62,90),
                 altura=c(1.75,1.60,1.85))

#adc coluna
data$imc<-c(22.86,24.22,26.30)

#ou fazendo a conta direto
data$imc<-data$peso/(data$altura)^2
data$imc

#exluindo coluna
data$peso<-NULL

#excluindo linha
data<-data[-1,]#mas isso pode ser um problema
data

#excluindo com estrutura condicional
data<-data[!(data$nome=="joao" ),]
data

#alterando valor da coluna
data$nome[data$nome=="joao"]<-"joão"

#Importando Data Frame----
#para importar um data frame, é importante pensar em duas coisas:
#o dado vai estar no seu diretorio?
#qual tipo de arquivo ele é? csv/xlsx/txt?

#arquivos csv

imbl<-read.csv("imbl.csv", sep = ";", dec = ".",encoding = "ANSI")
View(imbl)

library(readxl)
imbl<-read_xlsx("imbl.xlsx",na="")
View(imbl)



