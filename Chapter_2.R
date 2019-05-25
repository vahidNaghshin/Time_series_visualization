#Prob. 2-1
library(fpp2)
gold.ts <- ts(gold, start=1985, frequency = 365)
autoplot(gold.ts) + xlab("Year") + ylab("Daily morning gold price")

woolyrn.ts <- ts(woolyrnq, start=1965, frequency = 4)
autoplot(woolyrn.ts) + xlab("Year") + ylab("Quarterly production of woollen yarn in Australia")

gas.ts <- ts(gas, start=1956, frequency = 12)
autoplot(gas.ts) + xlab("Year") + ylab("Australian monthly gas prod. in Australia")

frequency(gold)
frequency(woolyrnq)
frequency(gas)

which.max(gold)
# the index of the maximum value
match(which.max(gold),gold)

#Problem 2-2

tute1 <- read.csv("/Users/vnagh/Desktop/untitled_folder_4/tute1.csv", header=TRUE)
View(tute1)
mytimeseries <- ts(tute1[,-1], start=1981, frequency=4)
autoplot(mytimeseries, facets=TRUE)

#Problem 2-3
retaildata <- readxl::read_excel("/Users/vnagh/Desktop/untitled_folder_4/retail.xlsx", skip=1)
View(retaildata)
myts <- ts(retaildata[,"A3349873A"],
           frequency=12, start=c(1982,4))
autoplot(myts)
ggseasonplot(myts)
ggsubseriesplot(myts)
gglagplot(myts)
ggAcf(myts)

#Problem 2-4
bicoal.ts <- ts(bicoal, start=1920, frequency = 1)
autoplot(bicoal.ts)

autoplot(chicken)
autoplot(dole)

autoplot(usdeaths)
autoplot(lynx)
goog.ts <- ts(goog, start = c(2013,02,25), frequency = 365)
autoplot(goog.ts)+ggtitle("Google closing trading price")
autoplot(writing)

autoplot(fancy)
autoplot(a10)+ylab("drug sales")
autoplot(h02)


#Problem 2-5
writing
autoplot(writing)+xlab("Date")+ylab("Thousands of French Francs")+ggtitle("Sales of printing and writing paper")
# gglagplot shows that how different is the value of each month compared to k previous months values. As it can be seen,
# for example, in lag 1, June month is less correlated with May. It also shows the status (such as increase and decrease) compared to lagged months.
ggseasonplot(writing, year.labels=TRUE, year.labels.left=TRUE) +
  ylab("Thousands of French Francs") +
  ggtitle("Seasonal plot: Sales of printing and writing paper")
ggseasonplot(writing, polar=TRUE) +
  ylab("Thousands of French Francs") +
  ggtitle("Polar seasonal plot: Sales of printing and writing paper")
gglagplot(writing)
ggAcf(writing)

autoplot(fancy)
gglagplot(fancy)
ggAcf(fancy)

autoplot(a10)
gglagplot(a10)
ggAcf(a10)

autoplot(h02)
gglagplot(h02)
ggAcf(h02)


arrivals[,1]
autoplot(arrivals, facets=T)
ggseasonplot(arrivals[,1])

autoplot(dj)
ggAcf(dj)
ddj <- diff(dj)
autoplot(ddj)
ggAcf(ddj)

ggseasonplot(a10, year.labels=TRUE, year.labels.left=TRUE) +
  ylab("$ million") +
  ggtitle("Seasonal plot: antidiabetic drug sales")