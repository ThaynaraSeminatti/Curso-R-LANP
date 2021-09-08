#pacote para manipula??o
library(tidyverse)
#pacote para ler data frames em excel
library(readxl)
#pacote para tabelas
library(gt)

#dados que vamos usar de uma seguradora, para os exemplos
dados<-read_xlsx("seguradora.xlsx")

#para uma variavel----

#media 
mean(dados$valor_fipe)

#mediana
median(dados$valor_fipe)

#desvio padrao 
sd(dados$valor_fipe)

#maximo
max(dados$valor_fipe)

#min
min(dados$valor_fipe)

#quartil
mean(dados$valor_fipe,trim = 0.5)

quantile(dados$valor_fipe)

#variancia
var(dados$valor_fipe)
#ou
sd(dados$valor_fipe)^2


#valor minimo, 1quartil, mediana,  media, 3quartil, maximo
summary(dados$valor_fipe)
boxplot(dados$valor_fipe)

#frequencia

#relativa
table(dados$motivo)

#absoluta
prop.table(table(dados$motivo))

#moda
freq.motivo<-table(dados$motivo)
moda.motivo <- names(freq.motivo)[freq.motivo == max(freq.motivo)]


#manipulando dados

#media de cada motivo
dados %>% 
  group_by(motivo) %>% 
  summarise(n=mean(valor_fipe)) %>% 
  arrange(desc(n))


#frequencias
dados %>% 
  count(motivo) %>% 
  mutate(freq=n/sum(n)*100) %>% 
  arrange(desc(freq)) %>% 
  mutate(freq=round(freq,2),
         freq=paste(freq,"%","(",n,")",sep = ""),
         n=NULL)


#custo medio do sinistro para carros de 2014
ex<-dados %>% 
  filter(`Tipo Ve?culo`=="AUTOMOVEL"& `Ano Modelo`=="2014") %>% 
  summarise(media=mean(custo_sinistro))


#imprimindo mais de uma variavel
dados %>% 
  group_by(motivo) %>% 
  summarise(media=mean(valor_fipe),
            maximo=max(valor_fipe),
            minimo=min(valor_fipe)) %>% 
  gt() %>% #chamando tabela
  fmt_number(columns = c(media,maximo,minimo),
             sep_mark = ".", #indica separado de centena
             dec_mark = ",",#ceparador decimal
             decimals = 2) %>% #quatas casas dps da virgula 
  tab_header(title = "Adiciona titulo", subtitle = "adiciona subtitulo") %>% 
  tab_source_note("Adiciona Fonte") %>% 
  cols_label(motivo="Motivo",
             media= md("**M?dia**"))#muda como esta escrito


#unit() e separarete()

#unir cidade e uf
dados.juntos<-dados %>% 
  unite("cid.uf",Cidade:UF, remove = FALSE, sep = "|")


#separar
dados.separados<-dados.juntos %>% 
  separate(cid.uf, c("Cid", "uf"), sep = "\\|")

