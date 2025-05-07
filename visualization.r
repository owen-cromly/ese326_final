data(iris)

while (dev.cur() > 1) {
  dev.off()
}


windows()

png("s1.png", width = 800, height = 600)
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Sepal Length vs Sepal Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)
dev.off()
windows()
png("s2.png", width = 800, height = 600)
plot(iris$Petal.Length, iris$Petal.Width,
     main = "Petal Length vs Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)
dev.off()
windows()

png("s3.png", width = 800, height = 600)
plot(iris$Sepal.Length, iris$Petal.Width,
     main = "Sepal Length vs Petal Width",
     xlab = "Sepal Length",
     ylab = "Petal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)
dev.off()
windows()

png("s4.png", width = 800, height = 600)
plot(iris$Petal.Length, iris$Sepal.Width,
     main = "Petal Length vs Sepal Width",
     xlab = "Petal Length",
     ylab = "Sepal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)
dev.off()
windows()

png("s5.png", width = 800, height = 600)
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)

dev.off()
windows()
png("s6.png", width = 800, height = 600)
plot(iris$Sepal.Width, iris$Petal.Width,
     main = "Sepal Width vs Petal Width",
     xlab = "Petal Length",
     ylab = "Sepal Width",
     col = as.numeric(iris$Species),
     pch = 19,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5
)
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19, cex=2.5)
dev.off()

# we notice that Setosa is the easiest to distinguish from the others. This could be achieved pretty well using
# even basic thresholding methods. The other two species are more difficult to distinguish from each other, but we can
# still see some differences in the boxplots. They have different means for all features.

# we also notice that, especially for Sepal Width vs Length, Petal Width vs Length, Sepal vs. Petal Width, and
# Sepal vs. Petal Length, there is meaningful covariance between the variables. We should not treat the features 
# as independent.