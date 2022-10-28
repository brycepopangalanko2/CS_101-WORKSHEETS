data(iris)
iris

subset_vir <- subset(iris, Species == 'virginica' )
subset_vir

#Mean of each characteristics of the species
sepal_lng <- mean(subset_vir$Sepal.Length)
sepal_lng

sepal_wd <- mean(subset_vir$Sepal.Width)
sepal_wd

petal_lng <- mean(subset_vir$Petal.Length)
petal_lng

petal_wd <- mean(subset_vir$Petal.Width)
petal_wd

#Total mean of virginica species 
vir_mean <- c(sepal_lng, sepal_wd, petal_lng, petal_wd)
vir_mean

total_mean <- mean(vir_mean)
total_mean