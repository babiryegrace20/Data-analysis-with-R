#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  dataset <-read.csv("kla.csv")
  output$myPlot <- renderPlot(
    {
      if( input$Data =='BarPlot'){
        x <-as.vector(dataset$TOTAL2)
        names <- c('Central', 'Kawempe', 'Lubaga', 'Makindye', 'Nakawa', 'District')
        barplot(x, names.arg = names, xlab="Regions", ylab = "Population in Millions",
                main = "Bar Graph for population in Kampala", col = rainbow(length(x)))
      }
      else {
        if(input$Data == 'PieChart') {
          x <- dataset[1:5,]
          f <- as.vector(x$TOTAL2)
          labels <- c('Central', 'Kawempe', 'Lubaga',
                      'Makindye', 'Nakawa')
          pie(f, labels, main = 'Pie Chart for Kampala Population',
              col = rainbow(length(f)))
        }
      }
    }
  )
  output$data <- renderPrint(
    {
     if (input$Task == 'Edit'){
       f <- edit(dataset)
       r <- f[, -(1)]
       write.csv(r, "kla.csv")
     }
    
      
    }
  )
  output$tabD <- renderTable(
    {
      if(input$Data == 'DataSet'){
        as.data.frame(dataset)
        
      }
      
    }
  )

}

)