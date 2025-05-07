data(iris)

while (dev.cur() > 1) {
  dev.off()
}

setosa <- iris[iris$Species == "setosa", ]
versicolor <- iris[iris$Species == "versicolor", ]
virginica <- iris[iris$Species == "virginica", ]

windows()

hist(setosa)