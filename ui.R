library(shiny)

# Defin the UI for LM Variable Selection Tool
shinyUI(fluidPage(
  
  # Application Title
  titlePanel("Linear Model Variable Selection Tool for \"mtcars\" "),

  fluidRow(
    column(10, 
           h3("This tool fits models using \"mpg\" as the response variable and \
              selected variables as the predictor variables. If no variables are selected \
              the model will only use an \"intercept\" variable. Just below the selection \
              panel summary of the linear model is presented and below it model diagnostic \
              plots are displayed")
    )
  ),
  
  # Row with a selection tool
  fluidRow(
    
    # Checkbox
    column(5, 
           checkboxGroupInput('variablesCheckGroup',
                              label = h4("Please select variables to use in the linear model"),
                              choices = list("CYL - Number of cylinders" = 'cyl',
                                             "DISP - Displacement (in^3)" = 'disp',
                                             "HP - Gross horsepower" = 'hp',
                                             "DRAT - Rear Axle Ratio" = 'drat',
                                             "WT - Weight (1000 lbs)" = 'wt',
                                             "QSEC - 1/4 mile time" = 'qsec',
                                             "VS - V/S" = 'vs',
                                             "AM - Transmission (0:auto, 1:man)" = 'am',
                                             "GEAR - Number of forward gears" = 'gear',
                                             "CARB - Number of carbuerators" = 'carb'
                                             ),
                              selected = 1)
           ),
    
    # Column where we show the selected variables
    column(3, 
           h4("Selected Variables"),
           verbatimTextOutput("value")
           )
    
    ),
  
  hr(),
  
  # Display the linear model
  fluidRow(
    column(10, 
           h3("Summary of the Linear Model"),
           verbatimTextOutput("lmSummary")
    )
    ),
  
  hr(),
  
  # Display the diagnostic plots
  fluidRow(
    column(10, 
           h3("Linear model diagnostic plots"),
           tabsetPanel(tabPanel("Main",plotOutput("lmPlot", height = 800, width = 800)))
           #plotOutput("lmPlot")
    )
  )
  
))