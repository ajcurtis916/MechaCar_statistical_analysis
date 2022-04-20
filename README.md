
# MechaCar Analysis
## *Statistical Analysis on AutosRUs’ newest prototype the MechaCar* 
### Project Overview: perform multiple linear regression, summary statistics and t-tests to determine issues in AutosRUs' manufacturing process, and design an additional statistical study to determine how AutosRUs' vehicle performance matches up against its competitors
---
</br>

## Results
MechaCar is suffering from production troubles that are blocking the manufacturing team’s progress. As a result, we have been tasked with statistically reviewing production data for insights that may help the manufacturing team fix or optimize the manufacturing process.  During our statistical analysis, we performed multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, ran t-tests to determine if the manufacturing lots are statistically different from the mean population, and designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers:
</br>
</br>

### Linear Regression to Predict MPG

<img align="left" src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xlinear_regression.png" />

Based on our statistical analysis and given a significance level of .05, the vehicle length and ground clearance variables provided a statistically significant or non-random amount of variance to the mpg values in the dataset.  The p-value of the y-intercept was also determined to be statistically significant, meaning the significant variables may need scaling or transforming to help improve the model's predictive power, or there may be other variables that help explain the variability of our dependent variable that were not included in the model.

Given our access to only the data given and inability to scale or add additional variables, we removed the variables that were not determined to be significant and re-evaluated the model.  Once the statistically insignificant variables (vehicle weight, spoiler angle and AWD) were removed and a new multiple linear regression model was generated, the overall p-value decreased from 5.35e-11 to 6.64e-12.  However, the multiple r squared value also decreased from .71 to .67, meaning the explanatory power of the overall test was decreased from strong to moderate.  In either instance the p-value determined the results were statistically significant, with or without removing the statistically insignificant variables, so we could reject the null hypothesis i.e. the notion that the slope of linear model = 0.  It is likely better to stick with the model shown in the picture as it has a strong r squared value, provides more diversification so our model does not over fit, and the overall p-value passes either way.
</br>
</br>

### Summary Statistics on Suspension Coils

Total Summary     |  Lot Summary
:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xtotal_summary.png" width="400" />|<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xlot_summary.png" width="550"/>
</br>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Lot 1 performed the best in overall production uniformity, followed by Lot 2, then Lot 3.  Lot 3 did not fit the the above standard.  Our statistical tests found a variance of 170.29 in Lot 3's suspension coils.  Since lot 1 performed with a variance of only .98, and Lot 2 with a variance of 7.47, this brought the total variance to 62.29.  Design specifications were met by AutosRUs's three lots as a sum total, but there are improvements to be made among Lot 3's manufacturing processes. 
</br>
</br>

### T-Tests on Suspension Coils
All Lots  |   Lot 1   
:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xall_lots.png" width="450"/>|<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xlot_1.png" width="450"/>

Lot 2 |  Lot 3
:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xlot_2.png" width="450"/>|<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/xlot_3.png" width="450"/>
</br> 

Based on our statistical analysis and given a significance level of .05, all lots as a whole received a T-score of -1.89 and a p-value of .06.  This means the mean PSI of all analyzed lots (1498.78) fell -1.89 standard deviations away from the population mean (1500).  Since the data was determined to be normally distributed, and the p-value was not statistically significant, we failed to reject the null.  In other words, the difference observed between the two means can be explained by random chance, and there was not sufficient evidence to conclude that any external effects existed in the population.

Lot 1 received a T-score of 0, p-value of 1, and mean of 1500, meaning it was directly on target with the population mean.  We again failed to reject the null.  Lot 2 received a T-score of .52 and a p-value of .61, it's mean was 1500.2.  We again failed to reject the null, any observed difference was small enough that is could be explained by random chance.  Lot 3 received a T-score of -2.09, p-value of .04, and mean of 1496.14.  Since the data was determined to be normally distributed, we can reject the null hypothesis and determine the effect exists in the population.

The findings from our t-test followed the patterns observed from our summary statistics findings.  While the overall sample of the three lots as a group passed in terms of variance standards and p-value, and we failed to reject the null, it was only because Lot 1 and Lot 2 performed well enough that it brought up the averages for Lot 3. The means observed from both statistical analyses also matches.  When digging down deeper in both the summary statistics and the t-tests, Lot 1 performed best, followed by Lot 2, then Lot 3.  Lot 3 shows room for improvement in its part production. 
</br>
</br>

### Study Design: MechaCar vs Competition

We were tasked with designing a statistical study to quantify how the MechaCar performs against its competitors.  We feel strongly that inital cost, maintenance cost and fuel efficiency are major selling points, especially amid the current economic climate, and decided to test these metrics against the competition.  We would like to test these metrics over a span of five (5) years, to get a true feel for how maintanence cost will play out as the car begins to age.  Since we will be sampling from two different populations, and the metrics we want to analyze are numerical, we believe a two-sample t-test is the most fitting.

Our **null hypothesis** states: Given 5 years of vehicle usage of vehicles driven between 10,000 and 17,000 miles each year, there is no difference between the performance of the MechCar versus its competitors, based on the metrics of initial cost, maintenance cost and fuel efficiency.

Or **alternative hypothesis** states: Given 5 years of vehicle usage of vehicles driven between 10,000 and 17,000 miles each year, there is a difference between the performance of the MechCar versus its competitors, based on the metrics of initial cost, maintenance cost and fuel efficiency.

The above mileage range was chosen as it includes the lower and higher ends of reported average miles driven each year.  AutosRUs will need to begin obtaining data on the maintenance cost of its customers, and continue obtaining data on the highway and city mpg performance and cost of each vehicle when purchased for those respective customers.  AutosRUs will also need to begin obtaining the same data from 1-3 vehicle models of it's biggest name-brand competitors.
