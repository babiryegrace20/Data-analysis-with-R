

library(shiny)
library(shinydashboard)


shinyServer(function(input, output, session) {
  #data <- read.csv("C:\Users\GRACE\Desktop\ADMIN\mak\r.csv")
  output$myData <- renderPrint(
    {
      task <- input$Task
      county <- input$County
      if(task == "View"){
        x <- data.frame(data[data$Sub.county == "county", ])
        print(x)
      }
      else{
        if(task== "Edit"){
          m <- data[data$District == "Kampala", ]
          edit(m)
        }
      }
    }
  )

    #output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
       # x    <- faithful[, 2]
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white')

    #})

})
