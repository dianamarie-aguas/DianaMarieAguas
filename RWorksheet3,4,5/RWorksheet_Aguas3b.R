#Diana Marie Aguas BSIT2A 
#Worksheet3b

#1. Create a data frame using the table below.

#a. Write the codes.
Respondents <- c(seq(1:20))
Respondents

Sex <- c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2)
Sex

FathersOccupation <- c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1)
FathersOccupation

PersonsAtHome <- c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6)
PersonsAtHome

SiblingsatSchool <- c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2)
SiblingsatSchool

TypesofHouse <- c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
TypesofHouse

DF <- data.frame(Respondents, Sex, FathersOccupation, PersonsAtHome, SiblingsatSchool, TypesofHouse)


#b. Describe the data. Get the structure or the summary of the data
summary(DF)

#c. Is the mean number of siblings attending is 5?
No

#d.Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the codes and its output.
sbs <- subset(DF[1:2,1:6])
sbs

#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.
huwaw <- subset(DF[c(3,5), c(1,3)])
huwaw

#f. Select the variable types of houses then store the vector that results as types_houses. Write the codes.
types_houses <- DF$TypesofHouse
types_houses

#g

kiko <- subset(DF[c(1:20), c(1,3)])
kiko

MaleRes <- kiko[DF$FathersOccupation == '1',]
MaleRes

farm <- kiko[DF$FathersOccupation == '1',]
farm

#h
leni <- subset(DF[c(1:20), c(2,5)])
leni

FemaleRes <- leni[DF$SiblingsatSchool >= '5',]
FemaleRes

#2. Write a R program to create an empty data frame. Using the following codes: df = data.frame(Ints=integer(),
#Doubles=double(), Characters=character(), Logicals=logical(), Factors=factor(), stringsAsFactors=FALSE)
#print(“Structure of the empty dataframe:”) print(str(df))

df = data.frame(Ints=integer(),
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))

#a. Describe the results.

-The data frame is empty, it does not have columns, levels and row, but it consisted 
with 5 variables

#3. Interpret the graph

Figure 1: Sentiments of Tweets per day - Donald Trump
- Negative sentiments is overpowering the positive and neutral reactions of twitter users from July 14 to 21.

