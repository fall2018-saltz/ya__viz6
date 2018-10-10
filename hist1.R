
#4)	Create a histogram using GGPLOT for the population and a different histogram for the murder rate
#histogram for population
#to use ggplots we must use ggplots library
#ggplots is already installed so just use it
library("ggplot2")

#generate a histogram for population

#aes is used to add the axis here
popHist=ggplot(mergedData,aes(x=population))
#geom_histogram is used to create the bars of the histogram with a binwidth of 1000000 
#since the data here is very huge, we used 1000000
popHist=popHist+geom_histogram(binwidth = 1000000)
#ggtitle is used to add tttle to the hsitogram
popHist=popHist+ggtitle("Population Histogram")
popHist

#generate a histogram for Murder
#here Murder is on the x-axis

murHist=ggplot(mergedData, aes(x=Murder))
murHist=murHist+geom_histogram(binwidth=10)
murHist=murHist+ggtitle("Murder histogram")
murHist

#generate a histogram for Assault
#here Assault is on the x-axis

assHist=ggplot(mergedData,aes(x=Assault))
assHist=assHist+geom_histogram(binwidth=20)
assHist=assHist+ggtitle("Assault Histogram")
assHist

#generate a Histogram for Rape
#here Rape is on the x-axis
rapeHist=ggplot(mergedData, aes(x=Rape))
rapeHist=rapeHist+geom_histogram(binwidth=20)
rapeHist=rapeHist+ggtitle("Rape Histogram")
rapeHist

#generate a Histogram for UrbanPop
#here UrbanPop is on the x-axis
urbanHist=ggplot(mergedData, aes(x=UrbanPop))
urbanHist=urbanHist+geom_histogram(binwidth=20)
urbanHist=urbanHist+ ggtitle("UrbanPop Histogram")
urbanHist

#here to generate the hisograms, we are uisng the binwidth variable
#binwidth changes for different variables
#the sizes of the variables vary so we have to change the binwidth accordingly
