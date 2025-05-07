data(iris)

while (dev.cur() > 1) {
  dev.off()
}


setosa <- iris[iris$Species == "setosa", ]
versicolor <- iris[iris$Species == "versicolor", ]
virginica <- iris[iris$Species == "virginica", ]

windows()

png("b1.png", width = 800, height = 600)
# Make a boxplot for Sepal.Length
boxplot(Sepal.Length ~ Species, data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("lightblue", "lightgreen", "lightpink"),
        cex = 3.5,
        cex.lab = 2.5,
        cex.axis = 2.5, 
        cex.main = 3.5, 
        cex.sub = 2.5)
dev.off()
# Open another window for the next plot
windows()
png("b2.png", width = 800, height = 600)
# Make a boxplot for Sepal.Width
boxplot(Sepal.Width ~ Species, data = iris,
        main = "Sepal Width by Species",
        xlab = "Species",
        ylab = "Sepal Width",
        col = c("lightblue", "lightgreen", "lightpink"),
        cex = 3.5,
        cex.lab = 2.5,
        cex.axis = 2.5, 
        cex.main = 3.5, 
        cex.sub = 2.5)
dev.off()
# Another one for Petal.Length
windows()
png("b3.png", width = 800, height = 600)
boxplot(Petal.Length ~ Species, data = iris,
        main = "Petal Length by Species",
        xlab = "Species",
        ylab = "Petal Length",
        col = c("lightblue", "lightgreen", "lightpink"),
        cex = 3.5,
        cex.lab = 2.5,
        cex.axis = 2.5, 
        cex.main = 3.5, 
        cex.sub = 2.5)
dev.off()
# And one more for Petal.Width
windows()
png("b4.png", width = 800, height = 600)
boxplot(Petal.Width ~ Species, data = iris,
        main = "Petal Width by Species",
        xlab = "Species",
        ylab = "Petal Width",
        col = c("lightblue", "lightgreen", "lightpink"),
        cex = 3.5,
        cex.lab = 2.5,
        cex.axis = 2.5, 
        cex.main = 3.5, 
        cex.sub = 2.5)
dev.off()



