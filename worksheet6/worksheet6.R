
#Bryce Kendric Saladar   BSIT 2A
#Worksheet 6

Use the dataset mpg

install.packages("dplyr")

library(ggplot2)
library(dplyr)

data(mpg)
as.data.frame(data(mpg))

glimpse(mpg)

str(mpg)

ggplot(mpg,aes(cty, hwy)) +
  geom_point()


#1. How many columns are in the mpg dataset? How about the number of rows? Show 
# the codes and its result.

data(mpg)
dat <- as.data.frame(mpg)
nrow(mpg)
ncol(mpg)

#2 Which manufacturers has the most models in this dataset? Which model has the 
#most variations? Ans:

modmt <- dat %>% group_by(manufacturer, model) %>%
  count()
modmt

colnames(modmt) <- c("Manufacturer","Model","Counts")

# a. Group the manufacture and find the unique models.Copy the codes and results
uniqmod <- datampg %>% group_by(manufacturer,model) %>%
  distinct() %>% count()
uniqmod

colnames(uniqmod) <- c("Manufacturer", "Model", "Counts")

# b. Graph the result by using plot() and ggplot().Write the codes and its result.

plot(modmt)

ggplot(modmt, aes(Model,Manufacturer)) + geom_point()

# 3.Same dataset will be used.You are going to show the relationship of the model
#and the manufacturer.

datampg <- mpg
dat_mod <- datampg %>% group_by(manufacturer, model) %>%
  distinct() %>% count()
dat_mod

colnames(dat_mod) <- c("Manufacturer","Model")
dat_mod


#a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?

ggplot(mpg, aes(model, manufacturer)) + geom_point()

# ANs: it reveals the exact graph of the geometric point of the Model and 
#Manufacturer



#b. For you. is it useful? If not. how could you modify the data to make it more
# informative?
# ANS: after the plot was graph and arrange. It can be informative by adding 
#some sort of legend for easier identification of the said data.

#4.Using the pipe(%>%), group the model and get the number of cars per model.
#Show codes and its reslut.

datmpg <- datampg %>% group_by(mod) %>% 
  count()
datmpg

colnames(datampg) <- c("Model","Counts")
datmpg

#a. Plot using the geom_bar() + coord_flip() just like what is shown below. Show
#codes and its result.

qplot(model,data = mpg,main = "Number of Cars per Model", xlab = "Model",
      ylab = "Number of Cars", geom = "bar", fill = manufacturer) +
  coord_flip()

#b.  Use only the top 20 observations. Show code and results.

mp <- datmpg[1:20,] %>% top_n(2)
mp

ggplot(mp, aes(xlab = Model, ylab = Counts)) + 
  geom_bar(stat = "Identity") + coord_flip()

#5. Plot the relationship between cyl - number of cylinders and displ - engine 
#displacement using geom_point with aesthetic colour = engine displacement. 
#Title should be “Relationship between No. of Cylinders and Engine Displacement”.

#a. Show thw codes and its result.

ggplot(data = mpg , mapping = aes(x = displ, y = cyl, main = "Relationship 
                                    between No of Cylinders and 
                                    Engine Displacement")) + 
  geom_point(mapping=aes(colour = "engine displacement")) 


#b. How would you describe its relationship?

#ANS: Graph that was based on the plot reveals that cyl was on y axis and 
#the displ are on x axis, which easily shows the indication of the engine 
#displacement.

#6.Get the total number of observations for drv - type of drive train 
#(f = front-wheel drive, r = rear wheel drive, 4 = 4wd) and class - type of class 
#(Example: suv, 2seater, etc.).Plot using the geom_tile() where the number of 
#observations for class be used as a fill for aesthetics.

ggplot(data = dat, mapping = aes(x = drv, y = class)) +
  geom_tile(aes(fill=class))



#a. Show the codes and its result for the narrative in #6.

ggplot(data = dat, mapping = aes(x = drv, y = class)) +
  geom_tile(aes(fill=class))



#b. Interpret the result.

#ANS: it graphs into sa tile graph that shows X axis(drv) and y axis(class).


#7.Discuss the difference between these codes. Its outputs for each are shown below.
# • Code #1

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))



#+ Code #2
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")

#8. Try to run the command ?mpg. What is the result of this command?

md <-?mpg
md

#a. Which variables from mpg dataset are categorical?

# ANS: the manufacturer, model, trans, drv, fl, class
#are the categorical variables from the dataset of mpg.



#b. Which are continuous variables?
  
#ANS: displ,year,cty,cyl,hwy


#c. Plot the relationship between displ (engine displacement) and hwy(highway 
#miles per gallon). Mapped it with a continuous variable you have identified 
#in #5-b. What is its result? Why it produced such output?

#ANS: the plot shows a productive rating of hwy and cty .

ggplot(mpg, aes(x = cty, y = hwy, colour = displ)) + geom_point()


#9. Plot the relationship between displ (engine displacement) and hwy
#(highway miles per gallon) using geom_point(). Add a trend line over the 
#existing plot using geom_smooth() with se = FALSE. Default method is “loess”.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE)


#10. Using the relationship of displ and hwy, add a trend line over existing 
#plot. Set these = FALSE to remove the confidence interval and method = lm to 
#check for linear modeling.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(se = FALSE, method = lm)
































































































