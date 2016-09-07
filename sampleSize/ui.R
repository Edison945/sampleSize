  
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("sample size"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("n",
                  "Numbers :",
                  min = 10,
                  max = 100,
                  value = 50,
                  step=5),
        
    sliderInput("delta",
                "Delta:",
                min = 0,
                max = 1,
                value = 0.5,
                step=0.1)
  ),
  
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
