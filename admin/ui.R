library(shiny)
library(shinythemes)
library(ggplot2)
gender <- read_csv("E:/recess/RecessApp/gender.csv")
census <- read_csv("E:/recess/RecessApp/census.csv")
#View(dataset)

shinyUI(fluidPage(theme=shinytheme("cerulean"),
                  navbarPage(title= "BusinessMarketAwarenessProgram!",
                             tabPanel("Home",
                                      navlistPanel(widths=c(2, 10),
                                      navbarMenu(title="Statistics",
                                                 tabPanel(title="Bargraph", 
                                                          h1(strong("General Bargraph:")), plotOutput("hom", height = 750)),
                                                 tabPanel(title="Piecharts", 
                                                          h1(strong("Gender Distribution:")), plotOutput("pief"), plotOutput("piem"))
                                      ),
                                      
                                      navbarMenu(title="Datasets",
                                                 tabPanel(title="View Structure", 
                                                          h1(strong("Dataset Stucture:")), verbatimTextOutput("str")),
                                                 tabPanel(title="Edit", 
                                                          h1(strong("Edit Dataset:")),
                                                          actionButton("Edit", "select")),
                                                 tabPanel(title="Delete", 
                                                          h1(strong("Delete Dataset:")),
                                                          actionButton("Delete", "Select")),
                                                 tabPanel(title="Update", 
                                                          h1(strong("Update Dataset:")),
                                                          actionButton("Update", "Browse"))
                                      )
                                      
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
