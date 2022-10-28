#Diana Marie Aguas BSIT2A

#Setosa Subset

setosasub <- subset(iris_data, Species == 'setosa' )
setosasub

tosep_length <- iris$Sepal.Length[1:50]
tosep_length

tosep_width <- iris$Sepal.Width[1:50]
tosep_width

topet_length <- iris$Petal.Length[1:50]
topet_length

topet_width <- iris$Petal.Width[1:50]
topet_width

tosamean <- c(tosep_length + tosep_width + topet_length + topet_width)
tosamean

mean(tosamean)
