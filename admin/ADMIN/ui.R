library(shiny)
library(shinydashboard)
#r <- read.csv("C:/Users/GRACE/Desktop/ADMIN/r.csv")
View(r)
ui <- dashboardPage(
    dashboardHeader(title ="BUSINESS MARKET AWARENESS SYSTEM" ),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Statistics", tabName = "statistics", icon =icon("dashboard")),
            menuItem("Regions", tabName = "regions", icon =icon("th"))
        )
    ),
    dashboardBody(
        #tabItems(
            #tabItem(tabName = "statistics",
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
            tabItem(tabName = "regions",
                    h2("Different Regions")
            )
        ),
        fluidRow(),
        
            mainPanel(
              verbatimTextOutput("myData")
            )
          )
        )



