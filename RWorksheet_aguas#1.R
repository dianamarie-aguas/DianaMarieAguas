#1 Diana Marie Aguas BSIT 2A WORKSHEET NO. 1

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 
         19,20,57,49,50,37,46,25,17,37,52,53,41,51,35,24,33,41)
length(age)

#2

rcp_age <- 1/age
rcp_age 

#3

new_age <- c(age, 0, age)
new_age


#4

age_srt <- sort(age)
age_srt

#5

miniAge <- min(age)
miniAge

maxAge <- max(age)
maxAge

#6

data <- c(2.4,2.8,2.1,2.5,2.4,2.2,2.5,2.3,2.5,2.3,2.4,2.7)
data

#7

data *2

#8 

seq(1:100)
seq(20,60)
mean(20:60)
sum(51:91)
seq(1:1000)
data.frame(1:100)
data.frame(20:60)
data.frame(mean(20:60))
data.frame(sum(51:91))
max(1:10)

#9 

filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100)) #if "f" in the word "filter" is small letter then result will be error
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100)) #if "F" in the word "Filter" is Capital then the result is not error


#10

sqnc <- seq(100:1)
sqnc

#11

sum((1:25)[((1:25)%%3==0) | ((1:25)%%5 == 0)])
data.frame(100:1)
data.frame(sum((1:25)[((1:25)%%3==0) | ((1:25)%%5 == 0)]))

#12

{ x <- 0+ x + 5 + }

#13

score <- c(72,86,92,63,88,89,91,92,75,75,77)
data.frame(score)

#14

a = c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")

#15

name = readline(prompt="Input your name: ") 
age = readline(prompt="Input your age: ") 
print <- "My name is,Diana Marie Aguas, and I am,19 ,years old."
print(R.version.string)

name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ") 
print(paste("My name is Diana Marie Aguas and I am 19 years old."))
print(R.version.string)


