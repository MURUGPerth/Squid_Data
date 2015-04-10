# MURUG meeting #2
# Data Exploration

# Initialize

# set working directory
#setwd("~/GitHub/Squid_Data") # laptop
setwd("C:/Users/User/Google Drive/R/MURUG/GitHub/Squid_Data/Data Explroation") # ellen's PC
# list all the files in your directory
list.files()
# read in the data
dat <- read.csv("Southern Calamari (Sepioteuthis australis) data 16.3.15.csv", as.is=T)
# initial look at the data:
# structure
str(dat)
# Red flag - there are some crazy characters in some variables
# Fix by recoding to NAs
dat[dat==""] <- NA
dat[dat==" "] <- NA
# first 6 lines of data
head(dat)
# there are a lot of columns in this data, which means it is very comprehensive,
# but also it's hard to get a grasp of...
# let's look at the column names of the data
colnames(dat)
# altneratively we can look at the data.frame directly
View(dat)


########################################################################
#DATA EXPLORATION


########################################################################
# Underlying question and task

# Can be found at:
# https://github.com/MURUGPerth/Squid_Data/blob/master/README.md

# The task for the moment is to apply a data exploration. 
########################################################################

########################################################################
#Housekeeping
#Load packages from R and support functions that we wrote

library(lattice)  #For fancy multipanel graphs

#Copy the file HighstatLibV6.R into your working directory
#Ensure it is a .R file and not a .R.txt file!!!!!! 

source("HighstatLibV6.R")
#Now we can make fancy graphs

########################################################################
#Data exploration
#A Outliers in Y / Outliers in X
#B Collinearity X
#C Relationships Y vs X
#D Spatial/temporal aspects of sampling design (not relevant here)
#E Interactions (is the quality of the data good enough to include them?)
#F Zero inflation Y
#G Are categorical covariates balanced?

##############################################
#A Outliers

# Outliers in the X
dotchart(dat$HL, main = "Hood Length")
dotchart(dat$Width, main = "Mantle Width")
dotchart(dat$Whole.Weight, main = "Whole Weight")
dotchart(dat$Mantle.weight, main = "Mantle Weight")
dotchart(dat$Quill.length, main = "Quill Length")
dotchart(dat$Stage, main = "Stage")
dotchart(dat$Whole.nadWt, main = "Nad Weight")

# To make all these plots in a nice grid to assess outliers
MyVar <- c("HL", "Width", "Whole.Weight", "Mantle.weight", "Quill.length", "Stage", "Whole.nadWt")
Mydotplot(dat[,MyVar])

# Optional: export staight to a .png file
# png("Outliers.png")
# Mydotplot(dat[,MyVar])
# dev.off()

# How do the outliers look?

##############################################
#B Collinearity X
#C. Relationships Y vs X

pairs(dat[, MyVar])

pairs(dat[, MyVar], lower.panel = panel.cor)

# Optional: export staight to a .png file
# png("Collinearity.png")
# pairs(dat[, MyVar], lower.panel = panel.cor)
# dev.off()


##############################################
#D. Spatial/temporal aspects of sampling
#Not relevant here

##############################################
#E Interactions

coplot(Whole.nadWt ~ HL | factor(Sex), data = dat, xlab= "Hood Length", ylab = "Whole Nad Weight")

xyplot(Whole.nadWt ~ HL | factor(Sex), data = dat, xlab= "Hood Length", ylab = "Whole Nad Weight")

# Optional: export staight to a .png file
# png("Interactions.png")
# xyplot(Whole.nadWt ~ HL | factor(Sex), data = dat, xlab= "Hood Length", ylab = "Whole Nad Weight")
# dev.off()

##############################################
#F. Zero inflation
# does not apply as it is not count data 

sum(complete.cases(dat)) # = 0, makes sense as the last three columns (comments etc.)
# the main variables we're interested in are in cols 10:21 (hood length - whole nad weight)
sum(complete.cases(dat[,10:21]))
sum(complete.cases(dat[,10:21])) / nrow(dat)

##############################################
#G. Are categorical covariates balanced?
table(dat$Sex)
pie(table(dat$Sex))


##############################################
# This is in the Zuur course notes and I have no idea why
#DON'T MAKE HISTOGRAMS OF COVARIATES!!!!!!!!!!!!!!
#DON'T MAKE HISTOGRAMS OF THE RESPONSE VARIABLE!!!!!!!!!!!!!!
##############################################
