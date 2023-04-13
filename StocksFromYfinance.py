#In 2023 we have a problem to get data from Yahoo FInance using Pandas_Datareader. This is a good solutinon that works to read stocks.

import datetime as dt
import yfinance as yf

company = 'MSFT'

# Define a start date and End Date
start = dt.datetime(2020,1,1)
end =  dt.datetime(2022,1,1)

# Read Stock Price Data 
data = yf.download(company, start , end)

data.tail(10)
