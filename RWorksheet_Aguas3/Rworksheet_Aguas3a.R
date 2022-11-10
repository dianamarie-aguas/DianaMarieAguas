#Diana Marie Aguas
#BSIT 2A

#Using Vectors

#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet 
#and letters which contains the lowercase letters of the alphabet.

LETTERS
## [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"
letters
## [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"

Upper_case11 <- LETTERS
Upper_case11

lower_case
#1a
Upper_case11 <- c(1:11)
Upper_case11

#1b
odd_letters = LETTERS[(1:26 %% 2 == 1)]
odd_letters

#1c
vowelsvec <- LETTERS[c(1,5,9,15,21)]
vowelsvec

#1d
lowerletters <- letters[c(21:26)]
lowerletters

#1e
vecletters <- letters[c(15:24)]
vecletters

#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in
#Celcius are 42, 39, 34, 34, 30, and 27 degrees.

#2a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.

city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city

#2b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
#Name the object as temp. Write the R code and its output. Numbers should also follow what
#is in the instruction.

temperature <- c(42,39,34,34,30,27)
temperature

#2c
names(temperature) <- city
temperature

#2e
fivesix <- temperature[5:6]
fivesix

#Using Matrices

#2Create a matrix of one to eight and eleven to fourteen with four columns and three # rows.
#2a
mateight_ <- matrix(c(1:8,11:14), nrow =3, ncol = 4)
mateight_

#2b
multiply <- mateight_*2
multiply

#2c
row2 <- c(mateight_[2,1], mateight_[2,2], mateight_[2,3], mateight_[2,4])
row2

#2d
rcol <- c(mateight_[1,3], mateight_[1,4], mateight_[2,3], mateight_[2,4])
rcol

#2e
twothree <- c(mateight_[3,2], mateight_[3,3])
twothree

#2f
colfour <- c(mateight_[1,4], mateight_[2,4], mateight_[3,4])
colfour

#2g
dimnames(mateight_) <- list(c("isa","dalawa","tatlo"),c("uno","dos","tres","quatro"))
mateight_

#2h
newdim <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14) 
newdim

dime <- matrix(newdim, nrow = 6, ncol = 2)
dime

dim(dime)

#Using Arrays

#3a. Create an array for the above numeric values. Each values will be repeated twice
#What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows.
#What will be its output?

arr <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
arr

three_ <- array(rep(arr, 2), dim = c(2,4,3))
three_

#3b. How many dimensions do your array have?
#It has 3 dimensions

#3c. Name the rows as lowercase letters and columns as uppercase letters starting from
#the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and
#“3rd-Dimensional Array”. What will be the R codes and its output?

dimnames(three_) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimesional Array",
                                                       "3rd-Dimensional Array"))
three_
