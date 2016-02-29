---
title       : Data Products - Shiny App Development
subtitle    : Linear Model Selection Tool
author      : CMLPR
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview

* This is a sample shiny app to test the capabilities of RStudio's shiny
* The goal is to use a number of widgets and publish them on the www.shinyapps.io
* The app can be found here:
    http://cmlpr.shinyapps.io/DataProducts/


--- .class #id 

## Dataset and goal

* "mtcars" from "datasets" libary is used in this application
* The application creates a linear model from the selected predictor variables and "mpg" response variable. Therefore this model is a linear fit for prediction of the miles per gallon (mpg) of a new car


---

## Linear Regression Example with mtcars dataset


```r
library(datasets); data(mtcars); fit <- lm(mpg ~ cyl, data = mtcars)
summary(fit)
```

```
## 
## Call:
## lm(formula = mpg ~ cyl, data = mtcars)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -4.9814 -2.1185  0.2217  1.0717  7.5186 
## 
## Coefficients:
##             Estimate Std. Error t value Pr(>|t|)    
## (Intercept)  37.8846     2.0738   18.27  < 2e-16 ***
## cyl          -2.8758     0.3224   -8.92 6.11e-10 ***
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 3.206 on 30 degrees of freedom
## Multiple R-squared:  0.7262,	Adjusted R-squared:  0.7171 
## F-statistic: 79.56 on 1 and 30 DF,  p-value: 6.113e-10
```

---

## Using the tool

* The initial section includes the a selection "groupcheckedbox" to select various predictor variables
* Based on the selected variables a linear fit will be generated
* If user doesn't pick a variable then the model will use intercept as the only predictor
* A "summary" result view is attached to the user interface
* To demonstrate the ploting functionaly, diagnostic plots are also included in the interface

---

## Possible Future Improvements

* Option to pick best model automatically
* Option to add interaction variables
* Option to transform variables
* Option to pick other datasets
* Option to perform cross validation
* Option to perform prediction with the model

---

## Thank you!

http://cmlpr.shinyapps.io/DataProducts/
