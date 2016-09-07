
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
 
  output$distPlot <- renderPlot({
    power <- function (n,delta,alpha=0.05){
      tmp <- sqrt(n)*delta-qnorm(alpha/2,lower.tail=FALSE)  
      pnorm(tmp)
    }
    num <- seq(10,input$n,5)
    plot(num,power(num,input$delta))
    abline(h=0.8,lty=2)
    
  })

})
