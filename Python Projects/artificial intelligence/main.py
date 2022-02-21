# extracted from https://towardsdatascience.com/simple-linear-regression-model-using-python-machine-learning-eab7924d18b4
# Import the numpy and pandas package
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt 
import seaborn as sns
from sklearn.model_selection import train_test_split
import statsmodels.api as sm

# Read the given CSV file, and view some sample records
advertising = pd.read_csv("Company_data.csv")
print(advertising)

# Shape of our dataset
print(advertising.shape)

# Info our dataset
advertising.info()

# Describe our dataset
advertising.describe()


# Visualizing the data using heatmap
sns.heatmap(advertising.corr(), cmap="YlGnBu", annot = True)
plt.show()

# Creating X and y
X = advertising['TV']
y = advertising['Sales']

# Splitting the varaibles as training and testing

X_train, X_test, y_train, y_test = train_test_split(X, y, train_size = 0.7, test_size = 0.3, random_state = 100)

# Take a look at the train dataset
print(X_train)
print(y_train)

# Adding a constant to get an intercept
X_train_sm = sm.add_constant(X_train)

# Fitting the resgression line using 'OLS'
lr = sm.OLS(y_train, X_train_sm).fit()

# Printing the parameters
print(lr.params)

# Performing a summary to list out all the different parameters of the regression line fitted
print(lr.summary())

# Visualizing the regression line
plt.scatter(X_train, y_train)
plt.plot(X_train, 6.948 + 0.054*X_train, 'r')
plt.show()