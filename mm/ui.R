#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
if(interactive()){
shinyServer(
  pageWithSidebar(
    headerPanel("Market Analysis System"),
    sidebarPanel(
      
      selectInput(inputId ="Task", "please select a task", choices = c("Edit", "View")),
      conditionalPanel(condition = "input.Task =='View' ", 
                       selectInput(inputId = "Data",
                                   "please select the data you want to see", 
                                   choices = c("DataSet", "BarPlot", "PieChart")))
                      
                                        
      )
                       
,
      mainPanel(
        plotOutput("myPlot"),
        verbatimTextOutput("data"),
        tableOutput("tabD")
      )
  )
)
}
  
  
  