
cenFun=function()
{
dfStates=raw_data
dfStates=dfStates[-53,]
dfStates=dfStates[-1,]
dfStates=dfStates[,-c(1,2,3,4)]
colnames(dfStates)=c("stateName","population","popOver18","percentOver18")
return(dfStates)
}
