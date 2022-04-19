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

Given our access to only the data given and inability to scale or add additional variables, we removed the variables that were not determined to be significant and re-evaluated the model.  Once the statistically insignificant variables (vehicle weight, spoiler angle and AWD) were removed and a new multiple linear regression model was generated, the overall p-value decreased from 5.35e-11 to 6.64e-12.  However, the multiple r squared value also decreased from .71 to .67, meaning the explanatory power of the overall test was decreased.  In either instance, the p-value determined the results were statistically significant, with out without removing the statistically insignificant variables, so we could reject the null hypothesis i.e. the notion that the slope of linear model = 0.  


### Summary Statistics on Suspension Coils

write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
