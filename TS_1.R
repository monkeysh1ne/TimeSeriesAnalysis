library(astsa)
library(xts)
library(forecast)

dummyData <- data.frame(Year=c(2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2018,2018,2018,2018,2018,2018,2018,2018,2018,2018,2018,2018),Month=month.abb[1:12],Dels=sample(2500:6000,36,replace=TRUE))
dd <- dummyData
dd
Box.test(dd$Dels, lag=20,type = "Ljung-Box")
acf(dd$Dels,lag.max = 20)
acf(diff(dd$Dels),lag.max = 20)
arima(dd$Dels, order=c(0,1,1))
auto.arima(dd$Dels)
tsdiag(auto.arima(dd$Dels))
predict(auto.arima(dd$Dels),n.ahead=8)



data(AirPassengers)
AP <- AirPassengers
AP
Box.test(AP, lag=20,type="Ljung-Box")
acf(AP,lag.max = 20)
acf(diff(AP),lag.max = 20)
arima(AP, order=c(0,1,1))
