#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$newHist <- renderPlot({
   
   v_supp <- input$v_ans
   v_data <- ToothGrowth
    
   ggplot(data=subset(v_data,supp == v_supp),aes (x=supp,y=len,fill=supp)) +
      geom_boxplot() +
      theme(legend.position="none") +
      facet_grid(.~dose) + ylab("Tooth Length") +xlab("Supplement")

  })
  
})
