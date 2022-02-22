#Combining X_train and X_test
X<-rbind(X_train,X_test)
#Renaming the columns of X using the features dataset provided
for(i in 1:ncol(X)){
  colnames(X)[i]=as.character(features[['V2']][[i]])
}
# Combining y_train and y_test
y<-rbind(y_train,y_test)
#Renaming y column to "Result"
colnames(y)<-"Result"
#The combined dataset containig all X and y values
data<-cbind(X,y)

#Now, we extract all columns with mean or standard deviaiton
pattern<-'[Mm]ean|std' #Pattern to be detected
feature_new<-data.frame(features=character(),
                        stringsAsFactors = FALSE)
#count=0
for(i in 1:nrow(features)){
  val<-as.character(features[['V2']][[i]])
  if(isTRUE(str_detect(val,pattern))){
    #print(paste(val,"matches"))
    #count=count+1
    #print(count)
    feature_new$features<-as.character(feature_new$features)
    feature_new[nrow(feature_new) + 1,]<-val
    feature_new$features<-as.factor(feature_new$features)
    #feature_new<-rbind(feature_new,val)
  }
}

#Creating empty frames to store feature name, mean and standard deviaiton for each column
feature_data<-data.frame()
mean_data<-data.frame()
sd_data<-data.frame()
#Calculating mean and standard deviation
for(i in feature_new$features){
  feature_val<-data.frame(i)
  mean_val<-data.frame(mean(X[[i]]))
  sd_val<-data.frame(sd(X[[i]]))
  feature_data<-rbind(feature_data,feature_val)
  mean_data<-rbind(mean_data,mean_val)
  sd_data<-rbind(sd_data,sd_val)
}
# Combining features,mean and standard data frames
data2<-cbind(feature_data,mean_data,sd_data)
colnames(data2)<-c('Feature_Description','Mean','Standard_deviation')