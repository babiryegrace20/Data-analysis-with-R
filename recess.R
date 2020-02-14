#first assignment
x<-c(2,0,0,4)
#select the first element
x[1]
#exclude the first element
x[-(1)]

#compare each element
relate <- c(x%in% x)
print(relate)

#second assignment
my_list <- list( c(10,10,TRUE,20.1,10,"d"),"FALSE",20,"grace")
print (my_list)
print(my_list[2])
cat(my_list[[1]], "\n")

#third assignment
colnames<-c("age","sales","profit","loss")
rownames<-c("grace","richard","grant","miley" )
p<- matrix(c(2:17), nrow = 4, byrow=TRUE, dimnames = list(rownames,colnames))
print(p)

colnames<-c("col1","col2","col3","col4")
rownames<-c("row1","row2","row3","row4" )
mat<- matrix(c(3:18), nrow = 4, byrow=TRUE, dimnames = list(rownames,colnames))
print(mat)
#multiplication of matrices
multiply<- p%*%mat
multiply
#subtraction of matrices
subtract<- mat - p
subtract
#addition of matrices
add<- p + mat
add
#how to acess elements in a matrix
#using integer vector as index
matric<-matrix(data=c(14, 15,16,17), nrow=4, ncol=4,dimnames=NULL, byrow = TRUE)
matric
matric[c(1,2),c(2,3)] #selects rows 1$2 and columns 2$3
matric[,] #selects entire matrix
matric[c(1,2),] #selects all the columns
matric[-1,]  #select all rows except the first
#using logical vector as index
matric[ c(TRUE, FALSE, TRUE, TRUE), C(TRUE, TRUE, FALSE, FALSE)]
#using character vector as index
matric[c("row1", "row2"),c("col1", "col2")]
matric[matrix>5] #selects elements greater than 5
matric[matric%%2 == 0] #selects even elements


