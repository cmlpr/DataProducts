# Overview

* [ Click Here for Shiny Application](http://cmlpr.shinyapps.io/DataProducts/)

* This tool demonstrates some capabilities of Shiny
* "mtcars" from "datasets" libary is used in this application
* The initial section includes the a selection "groupcheckedbox" to select various predictor variables
* The application then creates a linear model from the selected variables and using "mpg" variable as the response. Therefore this model is a linear fit for prediction of the miles per gallon of a new car. 
* If user doesn't pick a variable then the model will use intercept as the only predictor
* The results are presented as a summary text file - default for lm() function
* To demonstrate the ploting functionaly, diagnostic plots are also included here.