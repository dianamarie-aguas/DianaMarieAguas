
#1. The table shows the enrollment of BS in Computer Science. SY 2010-2011.

compsci <- data.frame("Course Year" = c("1st","2nd","3rd","4th"), "2019-2020"= c(80,75,70,60))
compsci

#a. Plot the data using a bar graph. Write the codes and copy the result.

barr <- c("1st" = 80, "2nd" = 75, "3rd" = 70, "4th" = 60)
barplot(barr)

#b Using the same table, label the barchart with Title = ” Enrollment of BS Computer Science horizontal axis = “Curriculum Year” and vertical axis = “number of students”

barr <- c("1st" = 80, "2nd" = 75, "3rd" = 70, "4th" = 60)
barplot(barr, main = "Enrollment of BS Computer Science", xlab = "number of students", ylab = "Course Year")

#2. The monthly income of De Jesus family was spent on the following: 60% on Food, 10% on electricity, 5% for savings, and 25% for other miscellaneous expenses.

#a. Create a table for the above scenario. Write the codes and result.

needs <- c("Food", "Electricity", "Savings", "MiscellaneousExpenses")
finance <- c(60,10,5,25)

expenses <- data.frame(needs,finance)
expenses

lamesa <- table(expenses)
lamesa

#b. Plot the data using a pie chart. Add labels, colors, and legend. Write the codes and its result. 

finance <- c(60,10,5,25)

data <- round(finance/sum(finance)*100,1)
data <- paste(data, "%", sep = " ")

pchart <- pie(finance, labels = data, cex = 0.8, col = rainbow(4), 
              main = "De Jesus Family Monthly Expenses")

legend("topright", c("Food", "Electricity", "Savings", "Miscellaneous"),cex = 0.7, fill = rainbow(4))

#3. Open the mtcars dataset. 

data("mtcars")

cars <- (mtcars$mpg)
cars

hist(cars)

#b. Colored histogram with different number of bins.

hist(mtcars$mpg, breaks=12, col="red")

#c. Add a Normal Curve

x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)

#4. Open the iris dataset. Create a subset for each species. 

#a. Write the codes and its result

data("iris")

eachspec <- data.frame(iris)
eachspec

setosadataf <- data.frame(iris)
setosadataf

versicolordataf <- data.frame(iris)
versicolordataf

virginicadataf <- data.frame(iris)
virginicadataf

setosa <- subset(setosadataf, Species == 'setosa')
setosa

versicolor <- subset(versicolordataf, Species == 'versicolor')
versicolor

virginica <- subset(virginicadataf, Species == 'virginica')
virginica

#b. Get the mean for every characteristics of each species using colMeans().
#Write the codes and its result.

setosa_ <- colMeans(setosa[sapply(setosadataf,is.numeric)])
setosa_

versicolor_ <- colMeans(versicolor[sapply(versicolor,is.numeric)])
versicolor_

virginica_ <- colMeans(virginica[sapply(virginica,is.numeric)])
virginica_

#c. Combine all species by using rbind()

combi <- rbind(setosa_, versicolor_, virginica_)

irisd <- data.frame(combi)
irisd

#d. From the data in 4-c: Create the barplot(). Write the codes and its result.

barplot(height = as.matrix(irisd),main = "Iris Data", xlab = "Characteristics",
        ylab = "Mean Scores",
        beside =T, col = rainbow(3)
)

