##load it into the R studio
library("quantmod")

##retrieve historical price data for General Electric Co. from Yahoo Finance
getSymbols('GE',src='yahoo', from="2000-01-01", to="2009-12-30")

##to see headers of file (OHLCV type)
names(GE)

##get adjusted closed price
geAdj = GE$GE.Adjusted["2000-01-01/2000-01-20"]

#compute the maximum minimum and mean from the adjusted closed price
max(geAdj); min(geAdj); mean(geAdj)

##draw the chart
chartSeries(GE)

##save the data
saveRDS(GE,file="GE.rds")