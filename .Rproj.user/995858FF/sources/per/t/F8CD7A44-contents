#R.factors
#factors are data objects wc are used to categorize the data and store it as levels
#they can store both strings and integers and are useful in the columns wc have a limited number of unique values.
#creating a factor
#create a vector as input.
data <- c("East","west","East","north","north","East","west","west","west")
print(data)
print(is.factor(data))
#apply the factor function
factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))
#factors in dataframe
#create the vectors of the data frame
height<- c(132,151,162,159,166,147,122)
weight<- c(48,49,66,53,67,52,40)
gender<- c("male","male","female","female","male","female","male")
#create the dataframe
input_data<-data.frame(height,weight,gender)
print(input_data)
#test if the gender column is a factor
print(is.factor(input_data$gender))
#print the gender column so see the levels
print(input_data$gender)
#changing the order of levels
data<-c("East","west","East","North","North","East","west","west","west","west","east","North")
#create the factors
factor_data<-factor(data)
print(factor_data)
#apply the factor function with required order of the level
new_order_data <- factor(factor_data,levels=c("East","west","North"))
print(new_order_data)

#generating factor levels using the gl() function
#n is an integer giving no. of levels
#k is an integer giving the number of replications
#labels is a vector of labels for the resulting factor levels.
v<-gl(3,4,labels=c("Tampa","Seattle","Boston"))
print(v)
