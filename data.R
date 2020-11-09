library(shiny)
library(ggplot2)


data(mpg)

ui <- fluidPage(
  inputPanel(
    selectInput('x', 'X', choices = c("manufacturer", "model", "year", "cyl", "class"),
                selected = "class"),
    selectInput('y', 'Y', choices = c( "trans", "fl", "drv"), 
                selected = "drv")
  ),
  
  mainPanel(plotOutput("outplot"))
  
)