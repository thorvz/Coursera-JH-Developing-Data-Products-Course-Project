#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)

# Define UI for application that draws a boxplot
shinyUI(fluidPage(
 navbarPage("The Effect of Vitamin C on Tooth Growth in Guinea Pigs", 
            # multi-page user-interface that includes a navigation bar.
            tabPanel("Data Explorer",
                     sidebarPanel(  
     checkboxGroupInput("v_ans","Choose vitamin C Supplement",c("Orange Juice (OJ)" = "OJ",
                                                                "Ascorbic Acid (VC)" = "VC"),
                                                              selected="Orange Juice (OJ)")
    ),
   
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("newHist")
    )),
    
    tabPanel("About",
             mainPanel(
              includeMarkdown("About.md")
             )
    ) # end of "About" tab panel       
  )
))
