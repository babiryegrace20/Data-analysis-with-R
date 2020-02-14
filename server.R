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
        Values <- matrix(home, nrow = 5, ncol = 12, byrow = FALSE)
        
        divisions <- c("Central","kawempe", "Lubaga","Makindye", "Nakawa")
        colors = c("green","orange","brown", "blue", "yellow")
        
        
        output$hom<-renderPlot({
            size<- input$SampleSize
            barplot(Values, size, main = "General Bargraph", names.arg = labels, xlab = "divisions", ylab = "population", ylim = c(0,1000000), col = colors)
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
               output$sdL<-renderText({ sd(lubaga)})
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
        y= c("2015", "2016", "2017","2018", "2019", "2020")
        c <- subset(gender, X2== "Kampala Central")
        cMale <- as.numeric(c(c$`2015`, c$`2016`, c$`2017`, c$`2018`,c$`2019`, c$`2020`))
        cFemale <- as.numeric(c(c$X4, c$X7, c$X10, c$X13, c$X16, c$X19))
        output$line1f<-renderPlot({
            plot(y, cFemale, type = "o", col = "blue", xlab = "years", ylab = "population size", 
                 main = "Kampala Central projected population for Females from 2015-2020")
            
        })
        output$line1m<-renderPlot({
            plot(y, cMale, type = "o", col = "blue", xlab = "years", ylab = "population size", 
                 main = "Kampala Central projected population For Males from 2015-2020")
            
        })
        genderC<- as.numeric(c(c$`2015`, c$X4))
        piepercentC<- round(100*genderC/sum(genderC), 1)
        output$pieC<-renderPlot({
            pie(genderC,labels=piepercentC, main="Kampala Central Gender Distribution", 
                col = rainbow(length(genderC)))
            legend("topleft", c("Male", "Female"), cex = 0.8,
                   fill = rainbow(length(genderC)))
            
        })
        
        k <- subset(gender, X2== "Kawempe Division")
        kMale <- as.numeric(c(k$`2015`, k$`2016`, k$`2017`, k$`2018`,k$`2019`, k$`2020`))
        kFemale <- as.numeric(c(k$X4, k$X7, c$X10, k$X13, k$X16, k$X19))
        output$line2f<-renderPlot({
            plot(y, kFemale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Kawempe Division projected population For Females from 2015-2020")
            
        })
        output$line2m<-renderPlot({
            plot(y, kMale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Kawempe Division projected population For Males from 2015-2020")
            
        })
        genderK<- as.numeric(c(k$`2015`, k$X4))
        piepercentK<- round(100*genderK/sum(genderK), 1)
        output$pieK<-renderPlot({
            pie(genderK,labels=piepercentK, main="Kawempe Division Gender Distribution", 
                col = rainbow(length(genderK)))
            legend("topleft", c("Male", "Female"), cex = 0.8,
                   fill = rainbow(length(genderK)))
            
        })
        
        l <- subset(gender, X2== "Lubaga Division")
        lMale <- as.numeric(c(l$`2015`, l$`2016`, l$`2017`, l$`2018`,l$`2019`, l$`2020`))
        lFemale <- as.numeric(c(l$X4, l$X7, c$X10, l$X13, l$X16, l$X19))
        output$line3f<-renderPlot({
            plot(y, lFemale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Lubaga Division projected population for Females from 2015-2020")
            
        })
        output$line3m<-renderPlot({
            plot(y, lMale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Lubaga Division projected population for Males from 2015-2020")
            
        })
        genderL<- as.numeric(c(l$`2015`, l$X4))
        piepercentL<- round(100*genderL/sum(genderL), 1)
        output$pieL<-renderPlot({
            pie(genderL,labels=piepercentL, main="Lubaga Division Gender Distribution", 
                col = rainbow(length(genderL)))
            legend("topleft", c("Male", "Female"), cex = 0.8,
                   fill = rainbow(length(genderL)))
            
        })
        
        m <- subset(gender, X2== "Makindye Division")
        mMale <- as.numeric(c(m$`2015`, m$`2016`, m$`2017`, m$`2018`,m$`2019`, m$`2020`))
        mFemale <- as.numeric(c(m$X4, m$X7, m$X10, m$X13, m$X16, m$X19))
        output$line4f<-renderPlot({
            plot(y, mFemale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Makindye Division projected population for Female from 2015-2020")
            
        })
        output$line4m<-renderPlot({
            plot(y, mMale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Makindye Division projected population for Male from 2015-2020")
            
        })
        genderM<- as.numeric(c(m$`2015`, m$X4))
        piepercentM<- round(100*genderM/sum(genderM), 1)
        output$pieM<-renderPlot({
            pie(genderM,labels=piepercentM, main="Makindye Division Gender Distribution", 
                col = rainbow(length(genderM)))
            legend("topleft", c("Male", "Female"), cex = 0.8,
                   fill = rainbow(length(genderM)))
            
        })
        
        n <- subset(gender, X2== "Nakawa Division")
        nMale <- as.numeric(c(n$`2015`, n$`2016`, n$`2017`, n$`2018`,n$`2019`, n$`2020`))
        nFemale <- as.numeric(c(n$X4, n$X7, n$X10, n$X13, n$X16, n$X19))
        output$line5f<-renderPlot({
            plot(y, nFemale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Nakawa Division projected population for Female from 2015-2020")
            
        })
        output$line5m<-renderPlot({
            plot(y, nMale,type = "o",col = "blue", xlab = "years", ylab = "population size", 
                 main = "Nakawa Division projected population For Malefrom 2015-2020")
            
        })
        genderN<- as.numeric(c(n$`2015`, n$X4))
        piepercentN<- round(100*genderN/sum(genderN), 1)
        output$pieN<-renderPlot({
            pie(genderN,labels=piepercentN, main="Nakawa Division Gender Distribution", 
                col = rainbow(length(genderN)))
            legend("topleft", c("Male", "Female"), cex = 0.8,
                   fill = rainbow(length(genderN)))
            
        })
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