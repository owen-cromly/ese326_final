data(iris)

while (dev.cur() > 1) {
  dev.off()
}

versicolor <- iris[iris$Species == "versicolor", ]
versicolor <- iris[iris$Species == "versicolor", ]
versicolor <- iris[iris$Species == "versicolor", ]

windows()

png("hversicolor_length.png", width = 800, height = 600)
hist(versicolor$Petal.Length,
     main = "Histogram of Petal Length for Versicolor",
     xlab = "Petal Length",
     ylab = "Frequency",
     col = "lightblue",
     breaks = 10,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5)
dev.off()
windows()
png("hversicolor_width.png", width = 800, height = 600)
hist(versicolor$Petal.Width,
     main = "Histogram of Petal Width for Versicolor",
     xlab = "Petal Width",
     ylab = "Frequency",
     col = "lightblue",
     breaks = 10,
     cex = 3.5,
     cex.lab = 2.5,
     cex.axis = 2.5, 
     cex.main = 3.5, 
     cex.sub = 2.5)
dev.off()