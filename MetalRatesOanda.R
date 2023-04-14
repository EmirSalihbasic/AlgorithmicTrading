# Oanda only provides historical data for the past 180 days.

#XAU is gold ounce
#XAG ia silver ounce.

library(quantmod)
getMetals(c('XAU', 'XAG'), from=Sys.Date()-180)
