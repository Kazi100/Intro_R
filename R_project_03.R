
###############################################
#Introduction to  R
###############################################

##################
print("Hello World!")


#Version of R
version

# R studio cloud - file upload to upload 
# Download from studio cloud- select the file,
# click more and click export and pop up download where you can download in specific folder


# run r command 
# comment R window (ctrl/command +shift+C) 
#########################################
#Working Directory

getwd() # get working directory
#Setting working directory
# setwd("Y:/0002_R_SUPPORT/R Bootcamp/Bootcamp codes")
# setting current directory- R studi, click ... in right bottom corner of the r studio
# select the file, press more and set as working directory


#######################
#load data
library(datasets) # this load built-in datasets


#summarize data####################
head(iris) # summarize the first six lines of iris data
summary(iris) # summarize statistics for iris data
plot (iris)



######################################################################

# Data structures
#  data types #character, numeric (real or decimal),integer(whole number),logical
# a vector is a common and basic data structure in R
#  A vector is a collection of elements that are most commonly of mode characteof same class 
#(e.g., "numeric", "character", "logical").
#they don't have dimensions and can only contain elements 

#Vector from series of number
a <- 1:50
a
typeof(a)
length(a)

b <-letters[5:15]
b
typeof(b)
length(b)


##########################################
#Create vector
#You can add, subtract, multiply, and divide. 
#Just type the operations into the R Console (or R Script)
# and hit the Ctrl+Enter (or run).
#Assignment statement using the function c() and operator <- or =

x<-c(112.3,97,92.7,86,86,102,99.2,95.8,103.5,89,86.7)

y<-c(75,71,57.7,48.7,74.3,73.3,68,59.3,57.8,48.5, 48.5)


#Missing Value
x1 <- c("a", NA, "c", "d", NA)
is.na(x1)

# create new dataset without missing data
x2 <- na.omit(x1)
x2


count(x) #need package library(plyr)
summary(x)


#Analysis

# Mean value of x: 
mean(x)

# Standard deviation of x:       
sd(x)

# Variance of x:       
var(x)

# Median value of x:       
median(x)

# Boxplot of x:     
boxplot(x)

# QQ-Plot of x:       
qqnorm(x)





# Analysis on the relationship between x and y:
# Scatterplot of x and y: 

plot(x,y) # (first x-axis, then y-axis)


# Correlation coefficient between x and y:      
cor(x,y)

# The coefficient of determination x and y:  denoted R2 or r2  
#igher R-squared values represent smaller differences between the observed data and the fitted values
#
cor(x,y)^2

# Least squares line between x and y:  
#(LSRL - Least Squares Regression Line) is a straight line that describes how a response variable y

changes as an explanatory variable x changes
lm(y~x)

# Draw least squares line:      
plot(x,y)     
abline(lm(y~x))


# The summary information about the least squares line:      
summary(lm(y~x))



#################==========================
  require("datasets")
df <- iris
plot(df)



plot (islands)

2+2

1:100 # insert sequence of number
print("Hello World")


# Assigning Values use <- not =, as = used for argument
a <-1

c <- d <- e <- 3 # multiple assigment

# multiple values
x <- c(1, 2, 5, 9)

# Common
# character with quote " " - other language classify as string

# logical or boolean, should be all cap like TRUE/FALS or T/F
typeof(c1)


# The default structure in R is vector, one dimestion number  either row or column


#Vector
v1 <- c(1,2,3,4,5)
v1
is.vector(v1)

#In R everything is vector, even single value is vector in R


#Matrix 
m1 <- matrix (c (T,T, F, F, T, F), nrow=2)
m1


m2 <-matrix (c ("a", "b",
                "c", "d"),
             nrow=2,
             byrow =T)
m2

  




  
#histogram
hist(grades_generate)

#We can also create it by imputing some data:

grades<-c(63, 68, 72, 53, 43, 59, 56, 58, 76, 54, 46, 62, 58, 54, 45, 
          53, 82, 69, 51, 58, 45, 50, 60, 73, 62, 56, 60, 53, 61, 56,
          43, 39, 61, 68, 60, 60, 58, 61, 63, 59, 58, 73, 54, 55, 57, 62, 71, 58, 84, 68)
summary(grades)

#Lets visualise the grades so we can imagine what our distribution looks like

hist(grades)

# Density function (PDF) is effective way to view the distribution of a variable
# is a function whose value at any given sample (or point) in the sample space
#(the set of possible values taken by the random variable) can be interpreted as providing a
#relative likelihood that the value of the random variable would equal that sample.

plot(density(grades))


grades_generate<-rnorm(n=20, mean=60, sd=4)
summary(grades_generate)
grades_generate



#Hypothesis testing
# We will present one here with a continuous variable. Let us generate a normal distribution of grades.


#We can perform a one test sample using R. 
#I want to test how likely it is to observe mean of 85 under the null distribution.

t.test(grades, mu = 85, alternative = "two.sided")


# What about 60?

t.test(grades, mu = 60, alternative = "two.sided")

#  We can also test whether true mean is greater than the sample mean of 65 under the null distribution:

t.test(grades, mu = 65, alternative = "greater")


#      We can reject the null, meaning that true mean is less than 65, but certainly not greater than 65. 
#     Looks good! Make a note of key outputs, most of them will reappear in other setting (i.e. p-value, test statistics, df).      



############################


# comments # hastag, pound 
# shift +ctrl+c = is the shortcut for comment
#load base package manually
# ? will initiate help section and expain about iris data set



library(datasets)
#======================
# ? - will provice information
?library (help ="datasets")
?iris
?UCBAdmissions
?Titanic



#great data to learn classfication and clustering data

UCBAdmissions
iris
Titanic 



#load and prepare data




#####################################################
#Histogram:
#####################################################

#make histogram
?hist

hist(diamonds$price)

df <-iris
head(df)
hist (df$Sepal.Width, 
      col ="blue", # blue color
      border = T, # No boarder
      main = "Histogram of Sepal Width", # main topic of the histogram
      xlab = "Sepal with(cm)") # xlab=x label



# Pie Chart with Percentages
slices <- c(10, 12, 4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")



########################################################################






######################################################






#datafram - larger data set -look like spreadsheet

#combine vectors of the same lenght
vNumber <-c(1,2,3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

df1 <-cbind(vNumber,vCharacter, vLogical) 
#cbind=bind number i.e make a data frame with three different type of number
#cbind convert all into characters form which is not needed as we can see by typing df1

df1
# Using as.data.fram command change the the character to three type of vector,
# which is used during the analysis
df2 <-as.data.frame(cbind(vNumber,vCharacter, vLogical)) 
df2


#list =====================================

o1 <- c(1,2,3)
o2 <-c("a", "b", "c", "d")
o3 <- c(T,F, T,T,F)
list1 <- list(o1, o2, o3) #List combine the data, useful with text data
list1

list2 <- list(o1,o2,o3, list) # list within lists
list2

#Coercing types###############################
##Automatic Coercion
#Goes to least restrictive data type


(coerce1 <-c(1,"b", TRUE))

typeof(coerce1) # typeof will find the type of data

#Coerce Numeric to integer
(coerce2 <- 5)
typeof(coerce2)

(coerce3<- as.integer(5))
typeof(coerce3)


(coerce5 <-as.numeric(c("1","2","3")))
typeof(coerce5)

# Coerce Matrix to Data Frame

(coerce6 <- matrix(1:9, nrow=3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow=3)))
# we want this data frame for anaysis and have v1, v2, v3
is.data.frame(coerce7)

#is.na.data.frame(coerce7)








# This is a level 1 header
## This is a Level 2 header
### This is a level 3 header

#R markdown -document r as file


########################
#CRAN= comrensive r archive node
# Packages=
# contributed packages = other people  worked on it 14000 package
# Package in r studio. check mark say it is installed.packages(
# load in memory- limit(pacman)

# Import 


#Tidyverse
# R package for data science
# easily imported manupulate and shared
# install.packages("tidyverse")

# =============Pipes=================
#Pipes
# Piping %>% (then or goesto)
# Draw link between function by piping in tydry version


#===========Import data=======================
# get data in speadsheet
#clean rectangular data in excel in easy to import

# First you need to upload the files, using the Upload button in the right bottom
# Files pane When you click on it,you should get a dialog box with a button that launches your system file picker.
# The dialog box will also advise you to upload multiple files
# by first compressing them into a zip archive and then uploading the archive.
# Once you have uploaded your files, they should appear in the Files pane.
# When you use the Import Dataset feature, its file browser is browsing the 
# files in your cloud project, not the files on your computer.
# So you need to upload first so that there’s something to select


library(readxl)
df <- read.csv("StateData.csv")
# or
df1 <- import("StateData.csv")
View(StateData)



#================color==================
?colors

colors() # show complete list of colors

#browse for color in R-
#can see in Microsoft, pdf or google spreadsheet for various color names
browseURL("https://datalab.cc/rcolors")


?palette
palette()
#colorname

#########################################
#==============Visualization====================
#####################################################

#Barchart

#use the diamond dataset from ggplot2
?diamonds # get some information on diamond dataset
?plot
?barplot


library(tidyverse)
diamonds # see the data


plot(diamonds$cut) # $ cut variable

#Using pipes to make barplot, pipe need tidyverse package
diamonds %>%
  select(color)%>%
  plot()

#Similar code using barplot(); doesnot work
diamonds%>%
  select(price)%>%
  barplot()


## will cause error in barplot.default(.) : 'height' must be a vector or a matrix

#create frequency vector with table()


?table  # information about table

#try agaian with table
diamonds %>%
  select(clarity) %>%
  table()%>% #Put data in appropriate format
  barplot()


#Sort bars by decreasing values (not for ordinal x) sort(decreasing = T)

diamonds %>%
  select(clarity) %>%
  table()%>% #Put data in appropriate format
  sort(decreasing = T) %>% # Sort table in decreasing order
  barplot()


# Add options to plot
diamonds %>%
  select(clarity) %>%
  table() %>%  # Put data in appropriate format
  barplot(
    main   = "Clarity of Diamonds",
    sub    = "(Source: ggplot2::diamonds)",
    horiz  = T,  # Draw horizontal bars
    ylab   = "Clarity of Diamonds",  # Flip axis labels
    xlab   = "Frequency",
    xlim   = c(0, 15000),  # Limits for X axis
    border =  NA,  # No borders on bars and T for border
    col    =  "Blue" # #CD0000"  # red3
  )




##################
#SORT
###############################

#pipe | = or
# and is &
#Exclusive or not search !



####################
#Rearranging Data
#########################

#deeply package_version- mutate


#case_when


#summary() work better with numeric variable
#table()  work will be character variable


#psych package is best package for data visualization
p_load(psych)
p_help(psych, web = F)


#round(2) # round to two decimal


##############################################
#Making Maps:
library(ggplot2)
library(maps)

# Prepare a map of USA
states <- map_data("state")
usamap <- ggplot(states, aes(long, lat, group = group)) +
  geom_polygon(fill = "Green", colour = "black")
usamap


# Prepare a map of NZ
nz <- map_data("nz")
nzmap <- ggplot(nz, aes(x = long, y = lat, group = group)) +
  geom_polygon(fill = "Light blue", colour = "black")
nzmap


#============Generate number=========================

# To generate random numbers from a uniform distribution you can use the runif() function. 
# Alternatively, you can use sample() to take a random sample using with or without 
# replacements.

# generate n random numbers between the default values of 0 and 1
runif(n)            

# generate n random numbers between 0 and 25
runif(n, min = 0, max = 25)       

# generate n random numbers between 0 and 25 (with replacement)
sample(0:25, n, replace = TRUE)   

# generate n random numbers between 0 and 25 (without replacement)
sample(0:25, n, replace = FALSE) 


#==============================

#https://www.math.csi.cuny.edu/Statistics/R/simpleR/stat007.html

x=runif(100)                 # get the random numbers
hist(x,probability=TRUE,col=gray(.9),main="uniform on [0,1]")    
curve(dunif(x,0,1),add=T)
