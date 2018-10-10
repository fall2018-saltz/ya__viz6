
#12)	Generate a scatter plot – have population on the X axis,
#the percent over 18 on the y axis, and the size & color represent the murder rate
library("ggplot2")
murScatplot=ggplot(mergedData, aes(x= population, y =percentOver18))
murScatplot=murScatplot+ geom_point(aes(size = Murder, color = Murder))
murScatplot=murScatplot+ ggtitle("Murder scatter plot")
murScatplot
