#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("EPIC"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("text1", label = h3("Input U")),
      selectInput("text2", label = h3("Select box"), 
                  
                  choices = list("1,1,0,1" , "1,0,1,1" , "1,1,0,1,1" ), 
                  
                  selected = 1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(column(6, 
                      verbatimTextOutput("text1"),
                      verbatimTextOutput("text2"),
                      verbatimTextOutput("rezult")
      ))
    )
  )
))
