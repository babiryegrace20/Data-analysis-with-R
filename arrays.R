#arrays are the R data objects whuch can store data in than two dimensions. for example
#if we create an array of dimensions(2,3,4) then it creates 4 rectangular matrices 
#each with 2 rows and 3 columns. arrays can store only data type
#an array is created using the "array()" function. it takes vectors as input and uses 
#the values in the dim parameter to create an array

#create two vectors of different length
vector1 <-c(5,9,3)
vector2 <-c(10,11,12,13,14,15)
#take these vectors as input to the array
result<-array(c(vector1,vector2),dim=c(3,3,2))
print(result)

#naming columns and rows
#we can give names to the rows, columns and matrices in the array by using the dimnames parameter

#4th assignment
#create two vectors of different length
vec1 <-c(5,9,3)
vec2 <-c(10,11,12,13,14,15)
column.names<-c("COL1","COL2","COL3")
row.names<-c("ROW1","ROW2","ROW3")
matrix.names<-c("MATRIX1","MATRIX2")
#take these vectors as input to the array
result<-array(c(vec1,vec2),dim=c(3,3,2),
              dimnames=list(row.names,column.names,matrix.names))
print(result)

#accessing array elements
#print the third row of the second matrix of the array
print(result[3,,2])
#print the element in the 1st rwo and 3rd column of the array
print(result[1,3,1])
#print the 2nd matrix
print(result[,,2])

#manipulating array elements
#create two vectors of different lengths and take these vectors as input to the array
vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
array1<-array(c(vector1,vector2),dim=c(3,3,2))
#create another vector of different lengths
vector3<-c(9,1,0)
vector4<-c(6,0,11,3,14,1,2,6,9)
array2<-array(c(vector1,vector2),dim=c(3,3,2))
#create matrices from these arrays
matrix1<-array1[,,2]
matrix2<-array2[,,2]
#add the matrices
add<-matrix1 + matrix2
print(add)

#calculations across array elements
#we can do calculatons across the elements in an array using the 'apply(') function
#syntx
#apply(x,margin,fun)
#where, x is an array
#margin, is the name of the data set used
#fun, is the function to be applied across the elements of the array

#create two vectors of different lengths
vector1<-c(5,9,3)
vector2<-c(10,11,12,13,14,15)
#take these vectors as input to the array
new.array<-array(c(vector1,vector2),dim=c(3,3,2))
print(new.array)
#use apply to calculate the sum of the rowsacross all the matrices
summation<-apply(new.array,c(1),sum)
print(summation)
