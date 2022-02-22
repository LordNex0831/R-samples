#Combining X_train and X_test
X<-rbind(X_train,X_test)
#Renaming the columns of X using the features dataset provided
for(i in 1:ncol(X)){
  colnames(X)[i]=as.character(features[['V2']][[i]])
}
# CCombining y_train and y_test
y<-rbind(y_train,y_test)
#Renaming y column to "Result"
colnames(y)<-"Result"
#The combined dataset containig all X and y values
data<-cbind(X,y)

#Creating empty frames to store feature name, mean and standard deviaiton for each column
feature_data<-data.frame()
mean_data<-data.frame()
sd_data<-data.frame()
#Calculating mean and standard deviation
for(i in 1:ncol(X)){
  feature_val<-data.frame(as.character(features[['V2']][[i]]))
  mean_val<-data.frame(mean(X[[i]]))
  sd_val<-data.frame(sd(X[[i]]))
  feature_data<-rbind(feature_data,feature_val)
  mean_data<-rbind(mean_data,mean_val)
  sd_data<-rbind(sd_data,sd_val)
}
# Combining features,mean and standard data frames
data2<-cbind(feature_data,mean_data,sd_data)
colnames(data2)<-c('Feature_Description','Mean','Standard_deviation')
