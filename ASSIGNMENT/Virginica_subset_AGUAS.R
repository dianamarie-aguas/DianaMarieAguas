#Diana Marie Aguas BSIT 2A

#Virginica Subset

virginicasub <- subset(iris_data, Species == 'virginica' )
virginicasub

sep_length <- iris$Sepal.Length[101:150]
sep_length

sep_width <- iris$Sepal.Width[101:150]
sep_width

pet_length <- iris$Petal.Length[101:150]
pet_length

pet_width <- iris$Petal.Width[101:150]
pet_width


vmean <- c(sep_length + sep_width + pet_length + pet_width)
vmean

mean(vmean)
