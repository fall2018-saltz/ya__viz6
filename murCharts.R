
#importing library for ggplot2 to generate barcharts
library("ggplot2")
#to calculate the number of murders per state
mergedData$murPerState=as.integer(mergedData$population*mergedData$Murder/100000)
stateMurders=mergedData[,c(2,3,4,10)]
stateMurders

#to create barchart for number of murders per state
murCount=ggplot(mergedData, aes(x=stateName, y=murPerState))
murCount=murCount+ geom_col()
murCount=murCount+ ggtitle("Murders per State")
murCount

#to create barchart for number of murders per state while rotating text and adding title
murCount2=ggplot(mergedData, aes(x=stateName, y=numMurders))
murCount2=murCount2+ geom_col()
murCount2=murCount2 + ggtitle("Total Murders")
murCount2=murCount2+ theme(axis.text.x = element_text(angle = 90, hjust = 1))
murCount2

#to create barchart for murder rate in increasing orderbarChart3 <- ggplot(mergeDataframe, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
barChart3 <- barChart3 + geom_col()
barChart3 <- barChart3 + ggtitle("Sorted bar chart of murders per state")
barChart3

#generating a barchart to show percentOver18 as color of the bar using ggplot() and 
#aes() to visualize the graph
barChart4 <- ggplot(mergeDataframe, aes(x = reorder(stateName, numMurders), y = numMurders, group = 1))
barChart4 <- barChart4 + geom_col(aes(size=percentOver18,color=percentOver18))
barChart4 <- barChart4 + ggtitle("Sorted bar chart showing percentOver18 as color of bar")
barChart4
