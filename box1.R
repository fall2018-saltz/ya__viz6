
#ggplot2 library has to be used to create ggplots
#just use the library as it is already imported

library("ggplot2")

#create a boxplot for population
#aes are used to add a and y axes
popBox=ggplot(mergedData, aes(x=factor(0),y=population))
#geom_boxplot is used to create a boxplot
popBox=popBox+geom_boxplot()
popBox=popBox+ggtitle("Population Boxplot")
popBox

#generate a Boxplot for Murder
murBox=ggplot(mergedData, aes(x=factor(0),y=Murder))
murBox=murBox+ geom_boxplot()
murBox=murBox+ ggtitle("Murder Boxplot")
murBox

#the boxplots are better 
#because they can give more information at a time like the summary
