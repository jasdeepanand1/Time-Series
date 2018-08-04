setwd("G:/BA/TimeSeries/")
dir()
data1=read.csv("Train_SU63ISt (1).csv")
data2=data1[-c(1,2)]
plot(data1)
nrow(data2)
head(data2)
t=c(1:ceiling(nrow(data2)*0.7))

    t

    
    data3=data2[t,]
dim(data3)
View(data4)
tail(data3)
data4=data2[-t,]
data4
data5=ts(data2,frequency = 24)      
View(data5)
View(data4)
Decomp2=decompose(data5)
plot(Decomp2)
forecasting=HoltWinters(data5)
forecasting
plot(forecasting)
library(forecast)
forecastFC = forecast(forecasting, h=5112)
plot(forecastFC,main="forecast")
getwd()
write.csv(forecastFC$mean,"result.csv")
