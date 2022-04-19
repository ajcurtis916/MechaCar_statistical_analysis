#set working directory
setwd("C:/Users/acurt/Desktop/Data Analytics/M15 Statistics & R/r_analysis/MechaCar_statistical_analysis")
getwd()

#import dependencies
library(jsonlite)
library(dplyr)
library(tidyr)
library(ggplot2) 

#read csv into table
mpg_table<- read.csv(file='resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD,data=mpg_table)
summary(model)
