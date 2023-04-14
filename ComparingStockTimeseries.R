library("quantmod")

##Set symbol c for VLIC, GE, KO, AAPL and MCD.
symbols=c('^VLIC','GE','KO','AAPL','MCD')

##retrieve historical price data for VLIC, GE, KO, AAPL and MCD. from Yahoo Finance
getSymbols(symbols,src='yahoo',from="2019-11-14",to="2020-11-14")

#obtain adjusted closed price for these 5 stocks.
VLICad = VLIC$VLIC.Adjusted; GEad= GE$GE.Adjusted;
KOad=KO$KO.Adjusted; AAPLad=AAPL$AAPL.Adjusted; MCDad = MCD$MCD.Adjusted

#compute cumulative sum (cumsum) of daily returns (Delt). Remove first term of the series, with [-1,],since cumsum is not defined for it.
vl = cumsum((Delt(VLICad)*100)[-1,])
ge = cumsum((Delt(GEad)*100)[-1,])
ko = cumsum((Delt(KOad)*100)[-1,])
ap = cumsum((Delt(AAPLad)*100)[-1,])
md = cumsum((Delt(MCDad)*100)[-1,])

##Set range of values for the plot.
lim = c(min(vl,ge,ko,ap,md),max(vl,ge,ko,ap,md))

#Create a plot. 
plot(vl,main="",ylim=lim,xlab="dates",ylab="% benefits") 