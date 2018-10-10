
#4)	Create a histogram using GGPLOT for the population and a different histogram for the murder rate
#histogram for population
#to use ggplots we must use ggplots library
#ggplots is already installed so just use it
library("ggplot2")
#generate a histogram for population

#aes is used to add the axis here
popHist=ggplot(mergeDataframe, aes(x=population))
#geom_histogram is used to create the bars of the histogram with a binwidth of 1000000 
myPlotPop=myPlotPop + geom_histogram(binwidth = 1000000)
myPlotPop=myPlotPop + ggtitle("Histogram of Population")
myPlotPop
