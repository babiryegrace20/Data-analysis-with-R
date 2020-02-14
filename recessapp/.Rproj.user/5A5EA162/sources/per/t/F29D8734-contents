library(shiny)
library(shinythemes)
library(ggplot2)
gender <- read_csv("gender.csv")
census <- read_csv("census.csv")

shinyServer(
  
  function(input, output){
    mydata1 <- subset(census, District == "Kampala" & `Sub-county`  == "Central Division")
    mydata <- subset(census, District == "Kampala" & `Sub-county`  != "District")
    
    cen<- as.numeric(c(mydata1$`0-4`, mydata1$`0-8`, mydata1$`0-17`, mydata1$`12-Jun`, 
            mydata1$`13-18`, mydata1$`18-30`, mydata1$`14-64`, mydata1$ `60+`, 
            mydata1$`15-24`, mydata1$`15-29`, mydata1$`15 -49`, mydata1$`65+`))
    labels <- c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                "60+", "15-24", "15-29", "15-29", "65-above")
    home<-as.numeric(c(mydata$`0-4`, mydata$`0-8`, mydata$`0-17`, mydata$`12-Jun`, 
                       mydata$`13-18`, mydata$`18-30`, mydata$`14-64`, mydata$ `60+`, 
                       mydata$`15-24`, mydata$`15-29`, mydata$`15 -49`, mydata$`65+`))
    Values <- matrix(home, nrow = 5, ncol = 12, byrow = TRUE)
    
    divisions <- c("Central","kawempe", "Lubaga","Makindye", "Nakawa")
    colors = c("green","orange","brown", "blue", "yellow")
    
  
output$hom<-renderPlot({
  barplot(Values, main = "General Bargraph", names.arg = labels, xlab = "divisions", ylab = "population", col = colors)
  legend("right", divisions, cex = 0.8, fill = colors)
})
    output$barplot1<-renderPlot({
      barplot(cen, names.arg=labels, xlab="Age group",ylab="population frequency",col="blue",
              main="Kampala Cenral Populaion Disribution by age group",border="red")
      
    })
    output$hist1<-renderPlot({
      hist(cen, xlab="population",col="blue", border="red",
           main="Histogram for Kampala Central")
      
    })
    output$hist2<-renderPlot({
      hist(lubaga, xlab="population",col="blue", border="red",
              main="Histogram for Lubaga Division")
      
    })
    output$hist3<-renderPlot({
      hist(makindye, xlab="population",col="blue", border="red",
           main="Histogram for Makindye Division")
      
    })
    output$hist4<-renderPlot({
      hist(nakawa, xlab="population",col="blue", border="red",
           main="Histogram for Nakawa Division")
      
    })
    output$hist5<-renderPlot({
      hist(kawempe, xlab="population",col="blue", border="red",
           main="Histogram for Kawempe Division")
      
    })
    
    mydata2 <- subset(census, District == "Kampala" & `Sub-county`  == "Lubaga Division")
    
    lubaga<- as.numeric(c(mydata2$`0-4`, mydata2$`0-8`, mydata2$`0-17`, mydata2$`12-Jun`, 
                          mydata2$`13-18`, mydata2$`18-30`, mydata2$`14-64`, mydata2$ `60+`, 
                          mydata2$`15-24`, mydata2$`15-29`, mydata2$`15 -49`, mydata2$`65+`))
    output$barplot2<-renderPlot({
      barplot(lubaga, names.arg=labels, xlab="Age group",ylab="population size",col="blue",
              main="Lubaga Division Populaion Disribution by age group",border="red")
      
    })
    mydata3 <- subset(census, District == "Kampala" & `Sub-county`  == "Makindye Division")
    
    makindye<- as.numeric(c(mydata3$`0-4`, mydata3$`0-8`, mydata3$`0-17`, mydata3$`12-Jun`, 
                            mydata3$`13-18`, mydata3$`18-30`, mydata3$`14-64`, mydata3$ `60+`, 
                            mydata3$`15-24`, mydata3$`15-29`, mydata3$`15 -49`, mydata3$`65+`))
    output$barplot3<-renderPlot({
      barplot(makindye, names.arg=labels, xlab="Age group",ylab="population size",col="blue",
              main="Makindye Division Populaion Disribution by age group",border="red")
      
    })
    mydata4 <- subset(census, District == "Kampala" & `Sub-county`  == "Nakawa Division")
    
    nakawa<-  as.numeric(c(mydata4$`0-4`, mydata4$`0-8`, mydata4$`0-17`, mydata4$`12-Jun`, 
                           mydata4$`13-18`, mydata4$`18-30`, mydata4$`14-64`, mydata4$ `60+`, 
                           mydata4$`15-24`, mydata4$`15-29`, mydata4$`15 -49`, mydata4$`65+`))
    output$barplot4<-renderPlot({
      barplot(nakawa, names.arg=labels, xlab="Age group",ylab="population size",col="blue",
              main="Nakawa Division Populaion Disribution by age group",border="red")
      
    })
    mydata5 <- subset(census, District == "Kampala" & `Sub-county`  == "Kawempe Division")
    
    kawempe<-  as.numeric(c(mydata5$`0-4`, mydata5$`0-8`, mydata5$`0-17`, mydata5$`12-Jun`, 
                            mydata5$`13-18`, mydata5$`18-30`, mydata5$`14-64`, mydata5$ `60+`, 
                            mydata5$`15-24`, mydata5$`15-29`, mydata5$`15 -49`, mydata5$`65+`))
    output$barplot5<-renderPlot({
      barplot(kawempe, names.arg=labels, xlab="Age group",ylab="population size",col="blue",
              main="Kawempe Division Populaion Disribution by age group",border="red")
      
    })
    piepercent1<- round(100*cen/sum(cen), 1)
    
    output$pie1<-renderPlot({
      pie(cen,labels=piepercent1, main="Kampala Cenral Populaion Age group piechart", col = rainbow(length(cen)))
      legend("topleft", c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                           "60+", "15-24", "15-29", "15-29", "65-above"), cex = 1.5,
             fill = rainbow(length(cen)))
      
    })
    piepercent2<- round(100*lubaga/sum(lubaga), 1)
    output$pie2<-renderPlot({
      pie(lubaga,labels=piepercent2, main="Lubaga Division Populaion Age group piechart", col = rainbow(length(lubaga)))
      legend("topleft", c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                           "60+", "15-24", "15-29", "15-29", "65-above"), cex = 1.5,
             fill = rainbow(length(lubaga)))
      
    })
    piepercent3<- round(100*makindye/sum(makindye), 1)
    output$pie3<-renderPlot({
      pie(makindye,labels=piepercent3, main="Makindye Division Populaion Age group in years piechart", col = rainbow(length(makindye)))
      legend("topleft", c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                           "60+", "15-24", "15-29", "15-29", "65-above"), cex = 1.5,
             fill = rainbow(length(makindye)))
      
    })
    piepercent4<- round(100*nakawa/sum(nakawa), 1)
    output$pie4<-renderPlot({
      pie(nakawa,labels=piepercent4, main="Nakawa Division Populaion Age group in years piechart", col = rainbow(length(nakawa)))
      legend("topleft", c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                          "60+", "15-24", "15-29", "15-29", "65-above"), cex = 1.5,
             fill = rainbow(length(nakawa)))
      
    })
    piepercent5<- round(100*kawempe/sum(kawempe), 1)
    output$pie5<-renderPlot({
      pie(kawempe,labels=piepercent5, main="Kawempe Division Populaion Age group in years piechart", col = rainbow(length(kawempe)))
      legend("topleft", c("0-4", "0-8", "0-17", "12+mnths", "13-18", "18-30", "14-64",
                          "60+", "15-24", "15-29", "15-29", "65-above"), cex = 1.5,
             fill = rainbow(length(kawempe)))
      
    })
    #Home gender
    c <- subset(gender, X2== "Kampala Central")
    k <- subset(gender, X2== "Kawempe Division")
    l <- subset(gender, X2== "Lubaga Division")
    m <- subset(gender, X2== "Makindye Division")
    n <- subset(gender, X2== "Nakawa Division")
    male <- as.numeric(c(c$`2015`, k$`2015`, l$`2015`, m$`2015`,n$`2015`))

    female <- as.numeric(c(c$X4, k$X4, l$X4, m$X4, n$X4))
    piepercentM<- round(100*male/sum(male), 1)
    output$piem<-renderPlot({
      pie(male,labels=piepercentM, main="Male Distribution in Kampala District", col = rainbow(length(male)))
      legend("topleft", c("Central","kawempe", "Lubaga","Makindye", "Nakawa"), cex = 1.5,
             fill = rainbow(length(male)))
      
    })
    piepercentF<- round(100*female/sum(female), 1)
    output$pief<-renderPlot({
      pie(female,labels=piepercentF, main="Female Distribution in Kampala District", col = rainbow(length(female)))
      legend("topleft", c("Central","kawempe", "Lubaga","Makindye", "Nakawa"), cex = 1.5,
             fill = rainbow(length(female)))
      
    })
  }
)