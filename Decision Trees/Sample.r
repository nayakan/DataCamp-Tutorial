
The rpart() function to build first decision tree. The function takes multiple arguments:
    1. formula: specifying variable of interest, and the variables used for prediction (e.g. formula = Survived ~ Sex + Age).
    2. data: The data set to build the decision tree (here train).
    3. method: Type of prediction you want. 
    We want to predict a categorical variable, so classification: method = "class"
    
    Instructions
  Build a decision tree my_tree_two:
    1. You want to predict Survived based on Pclass, Sex, Age, SibSp, Parch, Fare and Embarked.
    2. Use the train data to build the tree
    3. Use method to specify that you want to classify.
    4. Visualize my_tree_two with plot() and text().
    5. Load the R packages rattle, rpart.plot, and RColorBrewer.
    6. Use fancyRpartPlot(my_tree) to create a much fancier visualization of your tree.
    
# Build the decision tree
my_tree_two <- rpart(Survived ~ Pclass + Sex + Age + SibSp + Parch + Fare + Embarked, data = train, method = "class")

# Visualize the decision tree using plot() and text()
plot(my_tree_two)
text(my_tree_two)

# Load in the packages to build a fancy plot
library(rattle)


# Time to plot your fancy tree
fancyRpartPlot(my_tree_two)
