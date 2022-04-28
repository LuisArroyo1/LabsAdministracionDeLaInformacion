#PARTE 1
rm(data.limpia)#con esto se borran data frames
data<-read.csv("missing-data.csv",na.strings="")#los espacios vacios se llenan con na
show(data)
data.limpia<-na.omit(data)
View(data.limpia)
is.na(data[4,2])
is.na(data[4,1])
is.na(data$Income)


#PARTE 2

#CASO 1
data.income.limpio<-data[!is.na(data$Income),]
View(data.income.limpio)

#CASO 2
complete.cases(data)

data.limpia2<-data[complete.cases(data),]
View(data.limpia2)

#CASO 3
data$Income[data$Income==0]
data$Income[data$Income==0]<-NA
data$Income[data$Income==0]

#CASO 4
mean(data$Income)#no funciona porque hay valores na, hay que ignorarlos
mean(data$Income,na.rm=TRUE)
sd(data$Income)#no funciona porque hay valores na, hay que ignorarlos
sd(data$Income,na.rm=TRUE)
sum(data$Income)
sum(data$Income,na.rm=TRUE)


#PARTE 3
