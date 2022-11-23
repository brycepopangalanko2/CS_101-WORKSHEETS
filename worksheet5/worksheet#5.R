
# Bryce Kendric Saladar  BSIT 2A

#1)The table shows the enrollment of BS in Computer Science, SY 2010-2011.


#a) Plot the data using a bar graph. Write the codes and copy the result.
year <- c(80, 75, 70, 60)
barplot(year)


#b)Using the same table, label the barchart with
#Title = ” Enrollment of BS Computer Science
#horizontal axis = “Curriculum Year” and
#vertical axis = “number of students”

barplot(year, 
        main= "Enrollment of BS Computer Science",
        xlab = "Curriculum Year",
        ylab = "number of students", names.arg= c("1st", "2nd", "3rd", "4th"))
#2 The monthly income of De Jesus family was spent on the following:

#60% on Food, 10% on electricity, 5% for savings, and
#25% for other miscellaneous expenses.

#a)  Create a table for the above scenario.
#Write the codes and its result

av <- c("Food", "Electricity", "Savage", "Micellaneous_expenses")
de <- c(60, 10, 5, 25)

spend <- data.frame(av, de)
spend

tab <- table(spend)
tab


#b. Plot the data using a pie chart. Add labels, colors and legend.
#Write the codes and its result.

mon = c(60, 10, 5, 25)

data <- round(mon/sum(mon)*100,1)
data <- paste(data, "%", sep = " ")

piechart <- pie( mon, labels = data, cex = 0.8, col = rainbow(4), main = "De Jesus family Monthly Expenses")
legend("topright", c("Food", "Electricity", "Savings", "Micellaneous"), cex = 0.8 , fill = rainbow(4))


#3 Open the mtcars dataset.
data(mtcars)

#a.. Create a simple histogram specifically for mpg (miles per gallon) variable.
#Use $ to select the mpg only. Write the codes and its result.

data(mtcars)

simple <- (mtcars$mpg)
hist(simple,)


#b. Colored histogram with different number of bins.
# hist(mtcars$mpg, breaks=12, col="red")
#Note: breaks=controls the number of bins.

hist(mtcars$mpg, breaks=12, col="red")


#c. Add a Normal Curve

histo <-hist(simple_histo, breaks=10, col="red", xlab="Miles Per Gallon",
             main="Histogram with Normal Curve")
xfit<-seq(min(simple_histo),max(simple_histo),length=40)
yfit<-dnorm(xfit,mean=mean(simple_histo),sd=sd(simple_histo))
yfit <- yfit*diff(histo$mids[1:2])*length(simple_histo)
lines(xfit, yfit, col="blue", lwd=2)


#Copy the Results


#4 Open the iris dataset. Create a subset for each species.

data(iris)
View(iris)

#a. Write the codes and its result.

data_set1<- subset(iris, Species == "setosa")
data_set2<- subset(iris, Species == "versicolor")
data_set3<- subset(iris, Species == "virginica")
data_set1
data_set2
data_set3

#b.Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.
#Example:setosa <- colMeans(setosa[sapply(setosaDF,is.numeric)])

setosa <- colMeans(data_set1[sapply(data_set1,is.numeric)])
versicolor <- colMeans(data_set2[sapply(data_set2,is.numeric)])
virginica <- colMeans(data_set3[sapply(data_set3,is.numeric)])
setosa
versicolor 
virginica

#c Combine all species by using rbind()
#The table should be look like this:

species <- rbind(setosa, versicolor, virginica)
species

#d. From the data in 4-c: Create the barplot().
#Write the codes and its result.
#The barplot should be like this.

barplot(species, beside = TRUE, col= c("red", "green", "blue"),
        main= "Iris Data",
        xlab= "Characteristics",
        ylab= "Mean Scores", names.arg= c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width "))






















