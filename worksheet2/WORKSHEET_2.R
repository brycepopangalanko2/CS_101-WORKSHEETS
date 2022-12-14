#1.Create a vector using : operator
\hfill\break 
#a. Sequence from -5 to 5. Write the R code and its output. Describe its output.
\hfill\break
output <- -5:5
output
[1] -5 -4 -3 -2 -1  0  1  2  3  4  5
\hfill\break
#b. x <- 1:7. What will be the value of x?
x <- 1:7
x
[1] 1 2 3 4 5 6 7
\ hfill\break
# the value of x is the numbers 1 to 7
\ hfill\break
#2* Create a vector using seq() function
\hfill\break
#a. seq(1, 3, by=0.2) # specify step size
#Write the R code and its output. Describe the output.
\hfill\break 
seq(1,3,by= 0.2)
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
\hfill\break 
#the value of the object are from 1 to 3 with a 0.2 gap
\hfill\break 
#3. A factory has a census of its workers. There are 50 workers #in total. The following
list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, #35, 31, 27,
22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, #51, 35,
24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, #58, 26,
18.
\hfill\break 
Workers <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
\hfill\break  
Workers
[1] 34 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46
[24] 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61
[47] 54 58 26 18
\hfill\break
#a. Access 3rd element, what is the value?
third_elem <- c(Workers[3])
third_elem
[1] 22
\hfill\break
#b. Access 2nd and 4th element, what are the values?
secforth_elem <- Workers[c(2,4)]
secforth_elem
[1] 28 36
\hfill\break
#c. Access all but the 1st element is not included. Write the R code and its output.
\hfill\break 
all <- Workers[c(2:50)]
all
[1] 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19
[17] 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33
[33] 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26
[49] 18
\hfill\break
#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the #vector,names(x).
\hfill\break
x <- c("first"=3, "second"=0, "third"=9)
x
first second  third 
3      0      9 
\hfill\break     
#a. Print the results. Then access x[c("first", "third")].Describe the output.
x <- x[c("first", "third")]
x
first third 
3     9
\hfill\break
# the output are 3 and 9 which are assiociated at our character "first and third
\hfill\break
#b. Write the code and its output.
x <- x[c("first", "third")]
x
first third 
3     9
\hfill\break

num <- -3:2
num
[1] -3 -2 -1  0  1  2
\hfill\break

#a. Modify 2nd element and change it to 0;
#x[2] <- 0
#x
#Describe the output.
x[2] <- 0
x
[1] -3  0 -1  0  1  2

\hfill\break

#the value of the index in array was substitute to 0.

\hfill\break

#b Write the code and its output.
x[2] <- 0
x
[1] -3  0 -1  0  1  2
\hfill\break

#6.*The following data shows the diesel fuel purchased by Mr. Cruz.
\hfill\break
diesel <- data.frame (
  Month = c("Price per liter(Php)", "Purchase-quantity(Liters)"),
  Jan = c(52.50, 25),
  Feb = c(57.25, 30),
  March = c(60.00, 40),
  Apr = c(65.00, 50),
  May = c(74.25, 10),
  June = c(54.00, 45)
)
diesel
\hfill\break
Month  Jan   Feb March Apr   May June
1      Price per liter(Php) 52.5 57.25    60  65 74.25   54
2 Purchase-quantity(Liters) 25.0 30.00    40  50 10.00   45
\hfill\break

#b.What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase)
Jan = c(52.50, 25)
Feb = c(57.25, 30)
March = c(60.00, 40)
Apr = c(65.00, 50)
May = c(74.25, 10)
June = c(54.00, 45)
\hfill\break
fuel <- weighted.mean(Jan, Feb, March, Apr, May, June)
fuel
\hfill\break
[1] 43.04441
\hfill\break
#7  R has actually lots of built-in datasets. For example, the rivers data ???gives the lengths(in miles) of 141 ???major??? rivers in North America, as compiled by the US Geological Survey???

\hfill\break
#a Type ???rivers??? in your R console. Create a vector data with 7
elements, containing the number of elements (length) in rivers,
their sum (sum), mean (mean), median (median), variance (var)
standard deviation (sd), minimum (min) and maximum (max).
\hfill\break
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
\hfill\break
[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
[7]    135.0000   3710.0000
\hfill\break

#b.What are the results?
#The results are the datasets of major rivers in North America.

hfill\break
#c Write the code and its outputs.
\hfill\break
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data
\hfill\break
[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708
[7]    135.0000   3710.0000

\hfill\break

#8 The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.
\hfill\break
#a. Create vectors according to the above table. Write the codes.

\hfill\break
PowerRanking <- 1:25
CelebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of thesopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
\hfill\break
PowerRanking <- 1:25 
\hfill\break
CelebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
\hfill\break

Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
\hfill\break
Forbes_Data <- data.frame(PowerRanking, CelebrityName, Pay)
Forbes_Data
\hfill\break

PowerRanking           CelebrityName Pay
1             1           Tom Cruise  67
2             2       Rolling Stones  90
3             3        Oprah Winfrey 225
4             4                   U2 110
5             5          Tiger Woods  90
6             6     Steven Spielberg 332
7             7         Howard Stern 302
8             8              50 Cent  41
9             9 Cast of the sopranos  52
10           10            Dan Brown  88
11           11    Bruce Springsteen  55
12           12         Donald Trump  44
13           13         Muhammad Ali  55
14           14       Paul McCartney  40
15           15         George Lucas 233
16           16           Elton John  34
17           17      David Letterman  40
18           18       Phil Mickelson  47
19           19          J.K Rowling  75
20           20           Bradd Pitt  25
21           21        Peter Jackson  39
22           22      Dr. Phil McGraw  45
23           23            Jay Lenon  32
24           24          Celine Dion  40
25           25          Kobe Bryant  31
\hfill\break
#b Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the codes and its output.
PowerRanking [19] <- 15
PowerRanking
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 15 20 21
[22] 22 23 24 25
\hfill\break

Pay [19] <- 90
Pay 
[1]  67  9 2025 110  90 332 302  41  52  88  55  44  55  40 233
[16]  34  40  47  90  25  39  45  32  40  31
\hfill\break
Updated_Ranking <- data.frame(PowerRanking, CelebrityName, Pay)
Updated_Ranking
\hfill\break
PowerRanking        CelebrityName Pay
1             1           Tom Cruise  67
2             2       Rolling Stones  90
3             3        Oprah Winfrey 225
4             4                   U2 110
5             5          Tiger Woods  90
6             6     Steven Spielberg 332
7             7         Howard Stern 302
8             8              50 Cent  41
9             9 Cast of the sopranos  52
10           10            Dan Brown  88
11           11    Bruce Springsteen  55
12           12         Donald Trump  44
13           13         Muhammad Ali  55
14           14       Paul McCartney  40
15           15         George Lucas 233
16           16           Elton John  34
17           17      David Letterman  40
18           18       Phil Mickelson  47
19           15          J.K Rowling  90
20           20           Bradd Pitt  25
21           21        Peter Jackson  39
22           22      Dr. Phil McGraw  45
23           23            Jay Lenon  32
24           24          Celine Dion  40
25           25          Kobe Bryant  31
\hfill\break
#c. Interpret the data.
# The data shows the annual pay of the list of celebrity in the list from Tom Cruise to Kobe Bryant according to Forbes in there website.
