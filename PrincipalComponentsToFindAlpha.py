# -*- coding: utf-8 -*-
"""
Created on Thu Apr 20 18:13:37 2023

@author: Korisnik
"""


# =============================================================================
# USE PRINCIPAL COMPONENTS TO FIND ALPHA
# =============================================================================

#Import libraries

import yfinance as yf
import pandas as pd
import numpy as np
from sklearn.decomposition import PCA    ##package that builds statistical models for data analysis
import matplotlib.pyplot as plt


#Building a porftolio
symbols = ['MSFT','GOOGL','META']

data = yf.download(symbols,start="2020-01-01", end = "2022-11-30")
portfolio_returns = data ['Adj Close'].pct_change().dropna()


#PCA Model
pca = PCA (n_components = 3)  #Fit the model with top three components
pca.fit (portfolio_returns)

pct = pca.explained_variance_ratio_
pca_components = pca.components_

# =============================================================================
#                   CHART
# =============================================================================

cum_pct = np.cumsum(pct)
x = np.arange (1,len(pct)+1,1)

plt.subplot (1,2,1)
plt.bar(x,pct * 100, align ='center')
plt.title('Contribution (%)')
plt.xlabel ('Component')
plt.xticks (x)
plt.xlim ([0,4])
plt.ylim ([0,100])

plt.subplot (1,2,2)
plt.plot(x,cum_pct * 100, 'ro-')
plt.title('Cumulative Contribution (%)')
plt.xlabel ('Component')
plt.xticks (x)
plt.xlim ([0,4])
plt.ylim ([0,100])




