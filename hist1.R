
#4)	Create a histogram using GGPLOT for the population and a different histogram for the murder rate
#histogram for population
#to use ggplots we must use ggplots library
#ggplots is already installed so just use it
library("ggplot2")
#generate a histogram for population

#aes is used to add the axis here
popHist=ggplot(mergeDataframe, aes(x=population))
#geom_histogram is used to create the bars of the histogram with a binwidth of 1000000 
#since the data here is very huge, we used 1000000
popHist=popHist+geom_histogram(binwidth = 1000000)
#ggtitle is used to add tttle to the hsitogram
popHist=popHist+ggtitle("Population Histogram")
popHist
