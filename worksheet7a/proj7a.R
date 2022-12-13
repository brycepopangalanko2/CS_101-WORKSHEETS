#Worksheet 7a
# Bryce Kendric Saladar


library(Hmisc)
library(pastecs)

#1 Create a data frame for the table below.

Student <- seq(1:10)
Pre_test <- c(55,54,47,57,51,61,57,54,63,58)
Post_test <- c(61,60,56,63,56,63,59,56,62,61)

df <- data.frame(Student,Pre_test,Post_test)
df

#a. Compute the descriptive statistics using different packages 
#(Hmisc and pastecs).Write the codes and its result. Write the codes and its
#result

library(Hmisc)
library(pastecs)

describe(df)

stat.desc(df)

#2. The Department of Agriculture was studying the effects of several levels ofa
#fertilizer on the growth of a plant. For some analyses, it might be useful to 
#convert the fertilizer levels to an ordered factor.

Department_of_Agriculture <- c(10,10,10,20,20,50,10,20,10,50,20,50,20,10)

#a. Write the codes and describe the result.
ordfact <- sort(Department_of_Agriculture, decreasing = FALSE)
ordfact


#3)Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

Subjects <- c("l","n","n","i","l","l","n","n","i","l")

#a. What is the best way to represent this in R?

# Answer: Dataframe 
abduls <- data.frame(Subjects)
abduls 

#4.Sample of 30 tax accountants from all the states and territories of Australia 
#and their individual state of origin is specified by a character vector of 
#state mnemonics as:
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
state  

#a. Apply the factor function and factor level. Describe the results.

nien <- factor(state)
nien

#5. From #4 - continuation:

#• Suppose we have the incomes of the same tax accountants in another vector (in
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():
Cal <- tapply(state, incomes, mean)
Cal
#b. Copy the results and interpret.
# 40 41 42 43 46 48 49 51 52 54 56 58 59 60 61 62 64 65 69 70 
#NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA

#6.Calculate the standard errors of the state income means 
#(refer again to number 3)

Cal_ST.n <- length(Cal)
Cal_1.sd <- sd(Cal)
Cal_Final.se <- Cal_1.sd/sqrt(Cal_ST.n)
Cal_Final.se

#a. What is the standard error? Write the codes.
# Answer: NA

#b. Interpret the result.
#the result is not available because some variables are character type so it 
#won't able to get the standard error.


#7. Use the titanic dataset.
data("Titanic")
head<- data.frame(Titanic)

#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.

titan <- subset(head, select = "Survived")
titan

#8. The data sets are about the breast cancer Wisconsin. 
#The samples arrive periodically as Dr. Wolberg reports his clinical cases. 
#The database therefore reflects this chronological grouping of the data. 
#You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
#The dataset s all about Breast Cancer.

#b. Import the data from MS Excel. Copy the codes.

library(readxl)
excel <- read_excel("C:\\WORKSHEETS_CS101\\WORKHEETS\\worksheet7a//Breast_Cancer.xlsx")
excel

#c. Compute the descriptive statistics using different packages. 
#Find the values of:

#c.1 Standard error of the mean for clump thickness.
Clump <- length(excel$`CL. thickness`)
Clump_A <- sd(excel$`CL. thickness`)
Clump_B <- Clump_A/sqrt(excel$`CL. thickness`)
Clump_B
#c.2 Coefficient of variability for Marginal Adhesion.
coe <- sd(excel$`Marg. Adhesion`) / mean(excel$`Marg. Adhesion`)* 100
coe
#c.3 Number of null values of Bare Nuclei.
Null_Values <- subset(excel,`Bare. Nuclei` == "NA")
#c.4 Mean and standard deviation for Bland Chromatin
mean(excel$`Bl. Cromatin`)
sd(excel$`Bl. Cromatin`)
#c.5 Confidence interval of the mean for Uniformity of Cell Shape

#Calculate the mean
CalMean <- mean(excel$`Cell Shape`)
CalMean

#Calculate the standard error of the mean
SE_M <- length(excel$`Cell Shape`)
SD_B <- sd(excel$`Cell Shape`)
Ans_1 <- SD_B/sqrt(SE_M)
Ans_1

#Find the t-score that corresponds to the confidence level
D = 0.05
numE = SE_M - 1
numF = qt(p = D/ 2, df = numE,lower.tail = F)
numF

#Constructing the confidence interval
numG <- numF * numC

#Lower
numH <- CalMean - numG

#Upper
numI <- CalMean + numG

c(numH,numI)

#d. How many attributes?
attributes(excel)

#e. Find the percentage of respondents who are malignant. Interpret the results.
Percents <- subset(excel, Class == "maligant")
Percents
#ANSWER:
#There 17 respondents that are identify as malignant.
#And there are overall 49 respondent

library(AppliedPredictiveModeling)

data("abalone")
View(abalone)
head(abalone)
summary(abalone)

#Exporting the data abalone to the Microsoft excel file

library(xlsx)
write.xlsx(abalone,"C:\\WORKSHEETS_CS101\\WORKHEETS\\worksheet7a//abalone.xlsx")





