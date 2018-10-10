
#ggplot2 library has to be used to create ggplots
#just use the library as it is already imported
library("ggplot2")

#aes are used to add a and y axes
myPlotPop2 <- ggplot(mergeDataframe, aes(x=factor(0),y=population))
myPlotPop2 <- myPlotPop2 + geom_boxplot()
myPlotPop2 <- myPlotPop2 + ggtitle("Boxplot of Population")
myPlotPop2

#using ggplot() to generate the boxplot. we also use aes() to visualize the boxplot with 
#variables on x and y axes.
myPlotPop3 <- ggplot(mergeDataframe, aes(x=factor(0),y=Murder))
myPlotPop3 <- myPlotPop3 + geom_boxplot()
myPlotPop3 <- myPlotPop3 + ggtitle("Boxplot of Murder")
myPlotPop3
