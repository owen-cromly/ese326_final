source("functions.r")

data(iris)

while (dev.cur() > 1) {
  dev.off()
}

setosa <- iris[iris$Species == "setosa", ]
versicolor <- iris[iris$Species == "versicolor", ]
virginica <- iris[iris$Species == "virginica", ]

# test population means as to whether...
# virginica > versicolor
hypothesis_test_mus(virginica$Petal.Length, versicolor$Petal.Length, alpha = 0.05)
# versicolor > setosa 
hypothesis_test_mus(versicolor$Petal.Length, setosa$Petal.Length, alpha = 0.05)

# The result is rejection of the null hypothesis in both cases. It is neat to run this and change the number of samples
# collected from each species. The result is that the more samples you collect, the more likely you are to reject the 
# null hypothesis. While the exact number of samples needed to result in a rejection of the null hypothesis depends
# on the samples themselves (and their variances), there can be found an approximate tipping point.