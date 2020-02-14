library(shiny)
library(shinythemes)
library(ggplot2)
gender <- read_csv("gender.csv")
census <- read_csv("census.csv")
#View(dataset)

shinyUI(fluidPage(theme=shinytheme("cerulean"),
                  navbarPage(title= "BusinessMarketAwarenessProgram!",
                             tabPanel("Home",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title="Bargraph", plotOutput("hom", height = 750),
                                                            sliderInput("SampleSize", "please select sample size of bargraph:",
                                                                        min = 1000, max =10000 , value=5000, step=1000)),
                                                   tabPanel(title=" Piechart", plotOutput("pief"), plotOutput("piem"))
                                      )
                             ),
                             tabPanel("Central",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title=" Bargraph", plotOutput("barplot1"), plotOutput("hist1")
                                                            
                                                   ),
                                                   
                                                   tabPanel(title="LineChart", plotOutput("line1f"), plotOutput("line1m")
                                                   ),
                                                   tabPanel(title=" Piechart", plotOutput("pie1"), plotOutput("pieC"))
                                                   
                                                   
                                      )),
                             tabPanel("Lubaga",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title=" Bargraph", plotOutput("barplot2"), plotOutput("hist2")
                                                   ),
                                                   
                                                   tabPanel(title=" Piechart", plotOutput("pie2"), plotOutput("pieL")),
                                                   tabPanel(title="LineChart", plotOutput("line3f"), plotOutput("line3m")
                                                   )
                                                  
                                      )
                             ),
                             tabPanel("Makindye",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title=" Bargraph", plotOutput("barplot3"), plotOutput("hist3")),
                                                   tabPanel(title=" Piechart", plotOutput("pie3"), plotOutput("pieM")),
                                                   tabPanel(title="LineChart", plotOutput("line4f"), plotOutput("line4m")
                                                   )
                                                   
                                                   
                                      )
                             ),
                             tabPanel("Nakawa",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title=" Bargraph", plotOutput("barplot4"), plotOutput("hist4")),
                                                   
                                                   tabPanel(title=" Piechart", plotOutput("pie4"), plotOutput("pieN")),
                                                   tabPanel(title="LineChart", plotOutput("line5f"), plotOutput("line5m")
                                                   )
                                                  
                                                   
                                      )
                             ),
                             tabPanel("Kawempe",
                                      navlistPanel(widths=c(2, 10),
                                                   tabPanel(title=" Bargraph", plotOutput("barplot5"), plotOutput("hist5")),
                                                   
                                                   tabPanel(title=" Piechart", plotOutput("pie5"), plotOutput("pieK")),
                                                   tabPanel(title="LineChart", plotOutput("line2f"), plotOutput("line2m")
                                                   )
                                                  
                                                   
                                      )
                             )
                             
                             
                             
                  )
                  
)
)
