#CASO 1
data<-read.csv("missing-data.csv",na.strings="")
View(data)
data$Income[data$Income==0]<-NA
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm =
                                                      TRUE), data$Income)

#CASO 2
