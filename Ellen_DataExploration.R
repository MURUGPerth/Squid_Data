# MURUG meeting #2
# Data Exploration

# Initialize

# set working directory
setwd("~/GitHub/Squid_Data")
# list all the files in your directory
list.files()
# read in the data
dat <- read.csv("Southern Calamari (Sepioteuthis australis) data 16.3.15.csv")
# initial look at the data:
# structure
str(dat)
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
# I will clarify this with Pete Coulson / Jake Chandler, but:
# The Squid data is a biological survey of the South Calamari from the Cockburn
# Sound (Rockingham(?), Western Australia).
# The project was very comprehensive and involved collecting squid every month
# for 2 years. 
# Once the specimens were colloected, biological data was measured from the squid,
# including total length, weight, sex, and various weights of the sexual organs
# The desired results of the study are:
# - Sexual maturation time series (when are the squid spawning)
# - Length @ sexual maturation
# - Sex ratios
# more TBA

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
dotchart(dat$HL, main = "HL")
dotchart(dat$Width, main = "Width")
dotchart(dat$Whole.Weight, main = "Whole Weight")
dotchart(dat$Mantle.weight, main = "Mantle Weight")
dotchart(dat$Quill.length, main = "Quill Length")
dotchart(dat$Stage, main = "Stage")
dotchart(dat$Whole.nadWt, main = "Nad Weight")

# To make all these plots in a nice grid to assess outliers
MyVar <- c("HL", "Width", "Whole.Weight", "Mantle.weight", "Quill.length", "Stage", "Whole.nadWt")
Mydotplot(dat[,MyVar])
# Summary of outliers: OK

##############################################
#B Collinearity X

