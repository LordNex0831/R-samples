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

