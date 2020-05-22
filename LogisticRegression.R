# Logistic Regression 

# Importing the dataset
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[, 3:5]


# Splitting the dataset into training set and test set
# install.packages('caTools') # Ctrl + Shift + C to make comment and uncomment
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set =subset(dataset, split == TRUE)
test_set = subset(dataset, split ==FALSE)