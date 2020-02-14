#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(
    function(input, output, session){
        data <- read.csv("C:\Users\GRACE\Desktop\ADMIN\mak\r.csv")
        output$myData <- renderPrint(
            {
                task <- input$Task
                county <- input$County
                if(task == "View"){
                    x <- data.frame(data[data$Sub.county == "county", ])
                    print(x)
                }
                else{
                    if(task= "Edit"){
                        m <- data[data$District == "Kampala", ]
                        edit(m)
                    }
                }
            }
        )
    }
)