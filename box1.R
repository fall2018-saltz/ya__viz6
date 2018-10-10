
#ggplot2 library has to be used to create ggplots
#just use the library as it is already imported

library("ggplot2")
#aes are used to add a and y axes
popBox=ggplot(mergeDataframe, aes(x=factor(0),y=population))
#geom_boxplot is used to create a boxplot
popBox=popBox+geom_boxplot()
popBox=popBox+ggtitle("Boxplot of Population")
popBox

#generate a Boxplot for Murder
myPlotPop3 <- ggplot(mergeDataframe, aes(x=factor(0),y=Murder))
myPlotPop3 <- myPlotPop3 + geom_boxplot()
myPlotPop3 <- myPlotPop3 + ggtitle("Boxplot of Murder")
myPlotPop3
