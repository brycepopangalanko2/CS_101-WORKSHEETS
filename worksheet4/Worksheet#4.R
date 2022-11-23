

#Worksheet 4

#1 The table below shows the data about shoe size and height. Create a data frame

shoe <- data.frame(shoesize = c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0),
                   height = c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0), 
                   gender = c("F","F","F","F","M","F","F","F","M","F","M","F","M","M","M","M","F","F","M","F","F","M","M","F","M","M","M","M") )
shoe

names(shoe) <- list("Shoe size", "Height", "Gender")
shoe




#Describe the data.
#- The data shows the various sizes of shoes of both male and female including their heights






#Find the mean of the shoe size and height of the repondents.Copy the codes and results.

#Shoe size
mean(shoe$`Shoe size`)

#Height
mean(shoe$Height)


#c. Is there a relationship between shoe size and height? Why?
#-- Yes the relationship of between Shoe size and height is somehow relatable. Some shoe size are based how tall(height)you are.The larger the size the taller you are.




FACTORS
A nominal variable is catergorical variable without an implied order.This means that it is impossible to say that ' one is worth more than the other'.In contrast, ordinal variables do have a natural ordering.

Example:
 
Gender <- c("M","F","F","M")
factor_Gender <- factor(Gender)
factor_Gender

#Construct character vector months to a factor with factor() and assign the result to factor_months_vector.Print out factors_months_vector and assert that R prints out the factor levels below the actual values.


#Consider data consisting of the names of months:

vector_months <- c("March","April","January","November","January","September","October","September","November","August","January","November","November","February","May","August","July","December","August","August","September","November","February","April")

factor_months_vector <- factor(vector_months)
factor_months_vector 



Then check the summary() of the months_vector and factors_months_vector.

#Interpret the result of both vectors.Are they both equally useful in this case?

summary(vector_months)
summary(factor_months_vector)



#4 Create a vector and factor for the table below.

factor_data <- c("East" = '1', "West" = '4', "North" = '3')
factor_data


new_order_data <- factor(factor_data,levels = c("East" = '1',  "West" = '4',  "North" = '3'))
print(new_order_data)

getwd()
size <- read.table("import_march.csv", header = TRUE,sep = ",")
size
















































