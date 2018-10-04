
cenFun=function()
{
dfStates=read.csv(url("https://www2.census.gov/programs-surveys/popest/datasets/2010-2017/state/asrh/scprc-est2017-18+pop-res.csv") , stringsAsFactors = FALSE)
dfStates=dfStates[-53,]
dfStates=dfStates[-1,]
dfStates=dfStates[,-c(1,2,3,4)]
colnames(dfStates)=c("stateName","population","popOver18","percentOver18")
return(dfStates)
}
