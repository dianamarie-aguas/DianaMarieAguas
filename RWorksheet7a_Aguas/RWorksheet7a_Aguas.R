install.packages("Hmisc")
install.packages("pastecs")
install.packages("readr")

library(Hmisc)
library(pastecs)
library(readr)

#1. Create a data frame for the table below 

Student <- seq(1:10)
Pre_test <- c(55,54,47,57,51,61,57,54,63,58)
Post_test <- c(61,60,56,63,56,63,59,56,62,61)

studDF <- data.frame(Student, Pre_test, Post_test)
studDF

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

describe(studDF)
stat.desc(studDF)

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful 
#to convert the fertilizer levels to an ordered factor.

fertilizer <- c(10,10,10,20,20,50,10,20,10,50,20,50,20,10)

#a. Write the codes and describe the result.
agriculture <- sort(fertilizer, decreasing = FALSE)
agriculture

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

unli <- c("l","n","n","i","l","l","n","n","i","l")

#a. What is the best way to represent this in R?
# - Data frame

study <- data.frame(unli)
study 

#4. Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics
#as:
  state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
             "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
             "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
             "vic", "vic", "act")
  state

#a. Apply the factor function and factor level. Describe the results.
  fx3 <- factor(state)
  fx3

#5. From #4 - continuation: • Suppose we have the incomes of the same tax
  #accountants in another vector (insuitably large units of money)
  
  incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
               62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
               65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
  
#a. Calculate the sample mean income for each state we can now use the special
#function tapply():
  
  revenue <- tapply(state, incomes, mean)
  revenue

#b. Copy the results and interpret.  
  #40 41 42 43 46 48 49 51 52 54 56 58 59 60 61 62 64 65 69 70 
  #NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA 
  
#6. Calculate the standard errors of the state income means (refer again to number 3)
  #a. What is the standard error? Write the codes.
  stdError <- function(x) sqrt(var(x)/length(x))
  stdError(study)
  incster <- tapply(incomes, state, stdError)
  
#b. Interpret the result.
  

#Use the titanic dataset.
  data("Titanic")

head <- data.frame(Titanic)
  
#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.

survivors <- subset(head, select = "Survived")
survivors

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically
#as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
# - The data is about breast cancer in Wisconsin. The dataset contains the sample
# of reports from Dr. Wolberg's clinical cases.

#b.Import the data from MS Excel. Copy the codes.

library("readxl")

df <-read_csv("BreastCancer.csv")
df

#c. Compute the descriptive statistics using different packages. Find the values of:
#c.1 Standard error of the mean for clump thickness.

thick <- length(df$`CL. thickness`)
thic1 <- sd(df$`CL. thickness`)
thic2 <- thic1/sqrt(df$`CL. thickness`)
thic2

#c.2 Coefficient of variability for Marginal Adhesion.

variants <- sd(df$`Marg. Adhesion`) / mean(df$`Marg. Adhesion`)* 100
variants

#c.3 Number of null values of Bare Nuclei.

nuclei <- subset(df,`Bare. Nuclei` == "NA")
nuclei

#c.4 Mean and standard deviation for Bland Chromatin

mean(df$`Bl. Cromatin`)
sd(df$`Bl. Cromatin`)

#c.5 Confidence interval of the mean for Uniformity of Cell Shape

uni <- mean(df$`Cell Shape`)
uni

#Calculate the standard error of the mean

standardE <- length(df$`Cell Shape`)
standardE1 <- sd(df$`Cell Shape`)
standardE2 <- standardE1/sqrt(standardE)
standardE2


#Find the t-score that corresponds to the confidence level

tscore = 0.05
tsc = standardE1 - 1
confi = qt(p = tscore/ 2, df = tsc,lower.tail = F)
confi

#Constructing the confidence interval

confiE <- confi * standardE2

#Lower & Upper

low <- uni - confiE
up <- uni + confiE

LowUp <- c(low, up)

#d. How many attributes?
attri <- attributes(df)
attri

#e. Find the percentage of respondents who are malignant. Interpret the results.

perce <- subset(df, Class == "malignant")
perce

# - In 49 respondents, there are 18 that are malignant.

malig <- 17  / 49 * 100
malig

#9. Export the data abalone to the Microsoft excel file. Copy the codes.

install.packages("AppliedPredictiveModeling")

library("AppliedPredictiveModeling")

data("abalone")
View(abalone)
head(abalone)
summary(abalone)

#export abalone

install.packages("xlsxjars")
library(xlsx)

write.xlsx(abalone, "abalone.xlsx")
