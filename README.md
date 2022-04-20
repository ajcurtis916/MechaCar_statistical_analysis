# MechaCar Analysis
## *Statistical Analysis on AutosRUs’ newest prototype the MechaCar* 
### Project Overview: perform multiple linear regression, summary statistics and t-tests to determine issues in AutosRUs' manufacturing process, and design an additional statistical study to determine how AutosRUs' vehicle performance matches up against its competitors
---
</br>

## Results
MechaCar is suffering from production troubles that are blocking the manufacturing team’s progress. As a result, we have been tasked to statistically review the production data for insights that may help the manufacturing team fix or optimize the manufacturing process.  During our statistical analysis we performed multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, ran t-tests to determine if the manufacturing lots are statistically different from the mean population, and designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers:
</br>
</br>

### Linear Regression to Predict MPG

<img align="left" src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/linear_regression.png" />

Based on our statistical analysis and given a significance level of .05, the vehicle length and ground clearance variables provided a statistically significant or non-random amount of variance to the mpg values in the dataset.  The p-value of the y-intercept was also determined to be statistically significant, meaning the significant variables may need scaling or transforming to help improve the model's predictive power, or there may be other variables that help explain the variability of our dependent variable that were not included in the model.

Given our access to only the data given and inability to scale or add additional variables, we removed the variables that were not determined to be significant and re-evaluated the model.  Once the statistically insignificant variables (vehicle weight, spoiler angle and AWD) were removed and a new multiple linear regression model was generated, the overall p-value decreased from 5.35e-11 to 6.64e-12.  However, the multiple r squared value also decreased from .71 to .67, meaning the explanatory power of the overall test was decreased.  In either instance the p-value determined the results were statistically significant, with or without removing the statistically insignificant variables, so we could reject the null hypothesis i.e. the notion that the slope of linear model = 0.  It is likely better to stick with the model shown in the picture, as it has a higher r squared value, provides more diversification so our model does not over fit, and the overall p-value passes either way.
</br>
</br>

### Summary Statistics on Suspension Coils

Total Summary     |  Lot Summary
:-------------------------:|:-------------------------:
<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/total_summary.png" width="500" />|<img src="https://github.com/ajcurtis916/MechaCar_statistical_analysis/blob/main/resources/lot_summary.png" width="500"/>
</br>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Lot 1 performed the best in overall production uniformity, followed by Lot 2, then Lot 3.  Lot 3 did not fit the the above standard.  Our statistical tests found a variance of 170.29 in Lot 3's suspension coils.  Since lot 1 performed with a variance of only .98, and Lot 2 with a variance of 7.47, this brought the total variance to 62.29.  Design specifications were met by AutosRUs as a sum total, but there are improvements to be made among Lot 3's production standards. 




Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
