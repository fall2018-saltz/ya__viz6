
#4)	Create a histogram using GGPLOT for the population and a different histogram for the murder rate
#importing library for ggplot2
library("ggplot2")
#generate a histogram
#dataset. We are using geom_histogram() function with binwidth attribute to group the data 
#into bins. Here, we are using 500,000 as binwidth because the population is in millions.
myPlotPop <- ggplot(mergeDataframe, aes(x=population))
myPlotPop <- myPlotPop + geom_histogram(binwidth = 500000)
myPlotPop <- myPlotPop + ggtitle("Histogram of Population")
myPlotPop
