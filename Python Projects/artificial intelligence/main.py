# Import the numpy and pandas package
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt 
import seaborn as sns
from sklearn.model_selection import train_test_split

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

X_train, X_test, y_train, y_test = train_test_split(X, y, train_size = 0.7, 
                                                    test_size = 0.3, random_state = 100)
