library(shiny)

library(datasets)
data(mtcars)

getLM <- function(vars) {
  
  if ( is.null(vars) ) {
    fit <- lm(mtcars$mpg ~ 1, data = subset(mtcars, select = vars))
  } else {
    fit <- lm(mtcars$mpg ~ ., data = subset(mtcars, select = vars))
  }
  return(fit)
}

shinyServer(function(input, output) {
  
  
  # Get the varibales selected
  output$value <- renderPrint({input$variablesCheckGroup})
  
  # Run linear model and get summary
  output$lmSummary <- renderPrint({summary(getLM(input$variablesCheckGroup))})
  
  # Run linear model and get summary
  output$lmPlot <- renderPlot({
    par(mfrow=c(2,2))
    plot(getLM(input$variablesCheckGroup))
    })
  
  }
)