#Diana Marie Aguas BSIT 2A

#Versicolor Subset

versicolorsub <- subset(iris_data, Species == 'versicolor' )
versicolorsub

vsep_length <- iris$Sepal.Length[51:100]
vsep_length

vsep_width <- iris$Sepal.Width[51:100]
vsep_width 

vpet_length <- iris$Petal.Length[51:100]
vpet_length

vpet_width <- iris$Petal.Width[51:100]
vpet_width

colormean <- c(vsep_length + vsep_width + vpet_length + vpet_width)
colormean

mean(colormean)
