Student <-data.frame(Stud_number = c(1:4),
                     Student_name = c("Lily","Rovence","Aine","Jolly"),
                     Course = c("BIST","BSSE","BCSc","BIT"),
                     Age = c(19,20,21,23)
)

Student2 <-data.frame(Stud_number = 5,
                     Student_name = "Mike",
                     Course = "BCSc",
                     Age = 23
)
print(Student2)
Student3 <- rbind(Student,Student2,deparse.level =0)
Student3
print(Student3)


# a program that outputs a two 3*3 matrix

#Declare col and row names

Age<-c(1,2,3)
Marks<-c(30,40,70)
column.names <- c("Alpha","Beta","Omega")
row.names <- c("yr1","yr2","yr3")
matrix.names <- c("matrix1","matrix2")
print(stud_id)
print(Marks)


result<-array(c(Age,Marks),dim=c(3,3,2), dimnames=list(row.names,column.names,matrix.names))
#print("A TWO (3*3)MATRICES")
print (result)