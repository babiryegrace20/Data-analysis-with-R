#fourth assignment
aca<-data.frame("shop"=c("lira","kitgum","apac"),"attendant"=c("sabrina","charles","timothy"),"salary"=c(5000,8000,6000))
print(aca)
str(aca)

ace<-data.frame("shop"=c("nakawa"),"attendant"=c("robin"),"salary"=c(2000))
print(ace)
str(ace)
print(summary(ace))
A<-rbind(aca,ace,deparse.level=0)
A
print(A)
#naming dimensions of the dataframe
rownames(A)<-c("x","y","z")
print(A)

#inserting a row in the dataframe
#creating a dataframe
sales<-data.frame(sales_id = c(1:3),
                  sales_person = c("bushira","george","Ali"),
                  Branch = c("mayuge","iganga","kamuli")
                  
)
print(sales)

library(scatterplot3d)
scatterplot3d(sales$sales_id,sales$sales_person,sales$Branch,
              main="3D scatter plot",
              xlab="mayuge",
              ylab="iganga",
              zlab="kamuli",
              angle=60
)


  