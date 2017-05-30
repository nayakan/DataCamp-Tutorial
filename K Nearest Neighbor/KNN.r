library(class)
library(gmodels)
# Normalize Function
normalize <- function(x) {
  num <- x - min(x)
  denom <- max(x) - min(x)
  return (num / denom)
}

# Normalize iris datahead
iris_norm <- as.data.frame(lapply(iris[1:4], normalize))

# Summary of normalized iris data
summary(iris_norm)

# Setting seed
set.seed(1234)

# To split the data into Training set(2/3) and Test set(1/3)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.67, 0.33))

# Form training set
iris.training <- iris[ind==1, 1:4]

# Inspect training set
head(iris.training)

# Form test set
iris.test <- iris[ind==2, 1:4]

# Inspect test set
head(iris.test)

# Compose `iris` training labels
iris.trainLabels <- iris[ind==1,5]

# Inspect result
print(iris.trainLabels)

# Compose `iris` test labels
iris.testLabels <- iris[ind==2, 5]

# Inspect result
print(iris.testLabels)

# KNN Model
iris_pred <- knn(train = iris.training, test = iris.test, cl = iris.trainLabels, k=3)

# Inspect `iris_pred`
iris_pred

# Create data frame for iris test labels
irisTestLabels <- data.frame(iris.testLabels)

# Merge predicted and expected iris species labels
merge <- data.frame(iris_pred, iris.testLabels)
names(merge) <- c("Predicted Species", "Observed Species")

# Inspect merge
merge

# Analysis of Model
CrossTable(x = iris.testLabels, y = iris_pred, prop.chisq=FALSE)



