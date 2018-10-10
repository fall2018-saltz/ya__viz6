
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
murCount2=ggplot(mergedData, aes(x=stateName, y=murPerState))
murCount2=murCount2+ geom_col()
murCount2=murCount2 + ggtitle("Total Murders")
murCount2=murCount2+ theme(axis.text.x = element_text(angle = 90, hjust = 1))
murCount2

#to create barchart for murder rate in sorted order
murCountord=ggplot(mergedData, aes(x = reorder(stateName, murPerState), y = murPerState, group = 1))
murCountord=murCountord+ geom_col()
murCountord=murCountord+ ggtitle("Bar chart of murders per state in sorted order")
murCountord

#to create barchart for percentOver18 in sorted order
#also the color is percentOver18
popCountord=ggplot(mergedData, aes(x = reorder(stateName, murPerState), y = murPerState, group = 1))
popCountord=popCountord+ geom_col(aes(size=percentOver18,color=percentOver18))
popCountord=popCountord + ggtitle("Bar chart for percentOver18 in sorted order")
popCountord
