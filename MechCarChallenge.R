#set working directory
setwd("C:/Users/acurt/Desktop/Data Analytics/M15 Statistics & R/r_analysis/MechaCar_statistical_analysis")
getwd()

#import dependencies
library(dplyr)
library(tidyr)

#read csv into table
mpg_table<- read.csv(file='resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD,data=mpg_table)
summary(model)

#regenerate multiple linear regression model with only statistically significant variables
model <- lm(mpg ~ vehicle_length + ground_clearance,data=mpg_table)
summary(model)

#read csv into table
suspension <- read.csv(file='resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#get mean, med, variance, and st dev of PSI column
total_summary <- suspension %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#groupby lot summary statistics
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
