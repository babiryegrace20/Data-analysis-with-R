#variables
path=("hello world")
print("hello world" ,quote=FALSE)
#operators
print(4*4000)
print(sqrt(12222))
print(log(2))
print(2/34)

#objects in R
#vectors
#creating vectors
#accessing vector elements
#checking class of the vector
#checking data type of the vector
#checking the class of any object
#joining two vectors
#comparing the vector elements
#deleting and editing vector elements

#lists
#creating lists
my_list <- list( c(10,10,TRUE,20.1,10,"d"),"FALSE",20,"grace")
print (my_list)
#naming the values in the list(svnl)
names(my_list)<-c("vector","logical","integer","character")
print(my_list)

#nesting a list
#accessing elements in a list by element number
print(my_list[3])
#accessing list elements by name
print(my_list$vector)
#create review update delete edit(crude)
#adding elements in a list
my_list[3]<-54
print(my_list)


#deleting elements in a list
my_list[3]<-NULL
print(my_list)
#updating elements in a list
#merging lists
work <- list( c(10,10,TRUE,20.1,10,"d"),"TRUE",20,"babirye")
data <- list( c(10,10,TRUE,20.1,10,"a"),"FALSE",20,"grace")
merged_list<-c(work,data)
print(merged_list)
#converting lists to vectors (using unlist)
v1<-unlist(work)
v2<-unlist(data)
#combining the output using a comma(for lists with n0.s use the + to sum up the output incase needed.)
result<-c(v1,v2)
print(result)

#matrices
matrice<-matrix(data=14, nrow=1, ncol=1,dimnames=NULL, byrow = FALSE)
matrice
matric<-matrix(data=c(14, 15,16,17), nrow=4, ncol=4,dimnames=NULL, byrow = TRUE)
matric
#declare column and row names
colnames<-c("col1","col2","col3","col4")
rownames<-c("row1","row2","row3","row4" )
p<- matrix(c(2:17), nrow = 4, byrow=TRUE, dimnames = list(rownames,colnames))
print(p)
#create a vector of six elements
vector<-vector(1,2,3,4,5,6)
dim(vector)<-vector(2,3)
print(vector)

#dataframes
#two dimensional structure in r, has components of equal length
#each component forms the column and contents of the component form the rows
#create a data frame of two vectors(student or names)
X<- data.frame("student"=1:4, "score"=60:80)
str(x) 
print(x)
summary(x)
print(summary(x))
employment<- data.frame(emp_id = c("uoo1","uoo2","u003"), employeeName = c("olivia","charley","robin"), branch = c("kampala","nairobi","chicago"), salary = c(1000, 2000, 4000))
print(employment)
str(employment)
#how to acess components of a data frame
#we can either use [], [[]] or $ to acess columns of data frames.
x["score"]
x$score
x[[score]]
#acessing like a matrix
#select second and third row
x[2:3,]
#adding a column in a dataframe
employee$year=c(2015,2016,2018)
print(employee)
print(summary(employee))
#extracting datasets of particular rows
v<-data.frame(employment$salary,employment$year)
print(v)
#extract an element at the third row of the data frame
v<-data.frame(employment[3])
print(v)
print(summary(v))