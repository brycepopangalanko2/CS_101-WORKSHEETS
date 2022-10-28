data(iris)
iris

subset_versi <- subset(iris, Species == 'versicolor' )
subset_versi

#Mean of each characteristics of the species
sepal_lng <- mean(subset_versi$Sepal.Length)
sepal_lng

sepal_wd <- mean(subset_versi$Sepal.Width)
sepal_wd

petal_lng <- mean(subset_versi$Petal.Length)
petal_lng

petal_wd <- mean(subset_versi$Petal.Width)
sepal_wd

#Total mean of versicolor species subset
versi_mean <- c(sepal_lng, sepal_wd, petal_lng, petal_wd)
versi_mean

total_mean <- mean(versi_mean)
total_mean