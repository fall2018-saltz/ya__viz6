
#take the USArrests data set into arrests variable 
arrests=USArrests

#arrests doesn't contain a proper clumn name for state names but has state names as index
#so create a column to store the state names suing rownames
rownames(cleandata)=as.vector(cleandata[,"stateName"])

#now that we have to merge two dataframes using a common element 
#the column element is stateName
mergedData=merge(cleandata,arrests,by="row.names")
mergedData


