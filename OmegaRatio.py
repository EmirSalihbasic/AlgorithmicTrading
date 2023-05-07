# -*- coding: utf-8 -*-
"""
Created on Sun May  7 22:09:39 2023

@author: Korisnik
"""

import yfinance as yf
msftdf = yf.Ticker ('MSFT').history(period='504d')

import numpy as np

def Omega (df,threshold):
     
     dailyThreshold = (threshold+1)**np.sqrt(1/252)-1
     
     df['Daily Return'] = df['Close'].pct_change(1)
     
     df['Excess'] = df['Daily Return']-dailyThreshold
     
     dfPositiveSum = (df[df['Excess'] > 0].sum())['Excess']
     
     dfNegativeSum = (df[df['Excess'] > 0].sum())['Excess']
     
     omega = dfPositiveSum/(-dfNegativeSum)
     
     return omega


##### Plotting ###########

import matplotlib.pyplot as plt
thresholds = np.linspace (0,1.5,50)

def OmegaCurve (df):
     
     omegaValues = []
     
     for l in thresholds:
         val = round (Omega(df,l),10)
         omegaValues.append(val)
         
     return omegaValues    

msft = OmegaCurve(msftdf)
     
plt.plot(thresholds, msft)
plt.ylabel('Omega Ratio')
plt.xlabel('Threshold')


  