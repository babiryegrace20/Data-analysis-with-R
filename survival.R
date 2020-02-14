#SURVIVAL ANALYSIS AND CHISQUARE TEST ANALYSIS (MASS)
#install.packages("survival")
#library("survival")
#print(head(pbc))
#pbc
#str(pbc)

#creating a survival object
#survfit(Surv(pbc$time,pbc$status==2)~1)
#plot(Surv(pbc$time,pbc$status==2)~1)

#syntax for survival
#surv(time,event)

#CHISQUARE TEST
#to determine if two variables have significant correlation
#dnt use it for data coming from different correlations
#library("MASS")
#MASS::cars93
#print(cars93)
#view(cars93)
#chisq.test(data)
#d<-data.frame(Cars93$Type,Cars93$AirBags)
#d
#y<-table(Cars93$Type,Cars93$AirBags)
#y
#print(chisq.test(y))