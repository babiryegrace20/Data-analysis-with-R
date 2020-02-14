#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(
    pageWithSidebar(
        headerPanel("Market Analysis System"),
        sidebarPanel(
            selectInput("Task", "please select a task", choices = c("Edit", "View", "Add", "Delete")),
            conditionalPanel(condition = "input.Task =='View' ", 
                             selectInput("County", "please select a county", choices = c("Makindye", "kawempe", "Lubaga"))),
            conditionalPanel(condition = "input.Task =='Edit' ",
                             selectInput("County", "please select a county", choices = c("Makindye", "kawempe", "Lubaga")),
            conditionalPanel(
                condition = "input.Task == 'Delete'",
                textInput("Delete", "Please select the row you want to delete")
            )
            
            
        ),
        mainPanel(
            verbatimTextOutput("myData")
        )
    )
)
)


