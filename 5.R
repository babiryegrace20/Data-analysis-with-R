
#PREDICTION MODELLING.
 #to retrive datasets in R, datasets::cars-- cars is the dataset
 #to retrieve the first elements of the dataset, head(cars)--head(datasetname)
 
 #sixth assignment
 #prediction modelling
 #linear regression
 #multiple regression
 #logistic regression
 #time series
 
 #construct a linear regression model and perform the following graphical analysis
 #we use lm()function--it takes two urguments formula and data
 #linearMod<-lm(dist~speed,data=cars) --build linaer regression model on full data
 #print(linearMod)
 
 #1.draw a scatterplot
 #visualises the linear relationship between the response(y) and predictor values(x)
 
 #2.box plot analysis
 #(reason y boxplot)
 #to spot any outlier observations in the variable.having outliers in your predictor can drastically affect the predictions as they can affect the direction/slope of the line of best fit.
 #an outlier is any datapoint that lies outside the 1.5*inter quartile Range(IQR)
 #IQR is calculated as the distance between the 25th percentile and the 75th percentile values of that variable
 #par(mfrow=c(1,2)) #divide graph area in 2 columns
 #boxplot(cars$speed, main="speed",sub=paste("outlier rows:",boxplot.stats(cars$speed)$out)) #box plot for speed
 #boxplot(cars$dist, main="Distance",sub=paste("outlier rows:",boxplot.stats(cars$dist)$out)) #box plot for distance
 
 #3.density plot
 #(d=density(cars$speed))
   #plot(d,main="my first density")
 #--reason y density plot
 #to see the distribution of the predictor variable. ideally, a close to normal distribution(a bell shaped curve),without being skewed to the left or right is preffered.
 #a density plot visualises the distribution of data over a continous interval or time period.
 #density plots over histograms is that they are better at determining the distribution shape because they are not affected by the number of bins used.
 
 #4.correlation analysis between distance and speed(from scatter graph)
  #correlation analysis studies the strength of relationship between two continous variables.it involves computing the correlation coefficient between the two variables
  #correlation is a statistical measure that shows the degree of linear dependence between two variables.
  #cor(cars$speed, cars$dist)

#HOW TO USE THE DENSITY PLOT TO DETERMINE IF THE LINEAR REGRESSION VALUE IS NORMAL.
 
 #CONDITIONAL STATEMENTS IN R.
 #while, if else, do while
 #others include;repeat,break,next,return,switch
 
 #do while loop
 n<-10
 