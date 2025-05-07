data(iris)

while (dev.cur() > 1) {
  dev.off()
}


setosa <- iris[iris$Species == "setosa", ]
versicolor <- iris[iris$Species == "versicolor", ]
virginica <- iris[iris$Species == "virginica", ]

windows()

# Make a boxplot for Sepal.Length
boxplot(Sepal.Length ~ Species, data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("lightblue", "lightgreen", "lightpink"))

# Open another window for the next plot
windows()

# Make a boxplot for Sepal.Width
boxplot(Sepal.Width ~ Species, data = iris,
        main = "Sepal Width by Species",
        xlab = "Species",
        ylab = "Sepal Width",
        col = c("lightblue", "lightgreen", "lightpink"))

# Another one for Petal.Length
windows()
boxplot(Petal.Length ~ Species, data = iris,
        main = "Petal Length by Species",
        xlab = "Species",
        ylab = "Petal Length",
        col = c("lightblue", "lightgreen", "lightpink"))

# And one more for Petal.Width
windows()
boxplot(Petal.Width ~ Species, data = iris,
        main = "Petal Width by Species",
        xlab = "Species",
        ylab = "Petal Width",
        col = c("lightblue", "lightgreen", "lightpink"))



