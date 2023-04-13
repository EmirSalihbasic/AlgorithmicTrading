# -*- coding: utf-8 -*-
"""
Created on Thu Apr 13 22:21:52 2023

@author: Korisnik
"""

import datetime as dt
import yfinance as yf

company = 'MSFT'

# Define a start date and End Date
start = dt.datetime(2020,1,1)
end =  dt.datetime(2022,1,1)

# Read Stock Price Data 
data = yf.download(company, start , end)

data.tail(10)
