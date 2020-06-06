# Kernel SVM

# Importing the dataset
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]

# Encoding the target featture as factor
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

#Spliting the dataset into the training set and test set
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling 
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])