
# to create a function to read the data
cenFun=function(raw_data)
{
#pass the csv data into the dfStates variable
dfStates=raw_data
#removes the last row
dfStates=dfStates[-53,]
dfStates=dfStates[-1,]
dfStates=dfStates[,-c(1,2,3,4)]
colnames(dfStates)=c("stateName","population","popOver18","percentOver18")
return(dfStates)
}
cleandata=cenFun(raw_data)
cleandata



