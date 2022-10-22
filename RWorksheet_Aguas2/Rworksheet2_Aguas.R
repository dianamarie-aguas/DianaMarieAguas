#RWorksheet #2- Diana Marie Aguas BSIT 2A

#1.Create a vector using : operator
#a. Sequence from -5 to 5. Write the R code and its output. Describe its output.

seqA <- 5:5
seqA

#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

#2. Create a vector using seq() function
#a. seq(1, 3, by=0.2) # specify step size. Write the R code and its output. Describe the output.

vecseq <- seq(1, 3, by=0.2)
vecseq

#3. 
#a. Access 3rd element, what is the value?

factoryW <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
              22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
              24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
              18.)
factoryW

length(factoryW)

#3a.third element

thirdE <- factoryW[3]
thirdE

#b

secondE <- factoryW[2]
secondE

fourthE <- factoryW[4]
fourthE

#c

all_Elem <- factoryW [c(2:50)]
all_Elem

#4

names(x) <- c("first"=3, "second"=0, "third"=9)
names(x)

#4a

x[c("first", "third")]


#5

x <- c(-3:2)
x

#5a

x[2] <- 0
x

#6 The following data shows the diesel fuel purchased by Mr. Cruz.

#6a

month <- c("Jan","Feb","Mar","Apr","May","June")
price_per_liter <- c(52.50,57.25,60.00,65.00,74.25,54.00)
purchase_quantity <- c(25,30,40,50,10,45)

#b

ave_fuel <- data.frame(month, price_per_liter, purchase_quantity)


#7 

data <- c(length(rivers), sum(rivers), mean(rivers),median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#8a

power_ranking <- 1:25

celeb_names <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2",
                 "Tiger Woods", "Steven Spielberg", "Howard Stein", "50 Cent",
                 "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen",
                 "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas",
                 "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                 "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon",
                 "Celine Dion", "Kobe Bryant")

pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,
         75,25,39,45,32,40,31)

d_ranking <- data.frame(power_ranking,celeb_names,pay)

#8b

power_ranking[19]<- 15
power_ranking

pay[19] <- 90
pay