# Load in `ggvis`
library(ggvis)

# Iris scatter plot that maps Sepal length and Sepal width
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

# Iris scatter plot that maps petal length and petal width
iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

#Correlation between Petal Length and Petal width
cor(iris$Petal.Length, iris$Petal.Width)


# Return head of iris data
head(iris)

# Return structure of iris data
str(iris)

# Division of species
table(iris$Species)

# Summary of iris data
summary(iris)
