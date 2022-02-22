X<-rbind(X_train,X_test)
for(i in 1:ncol(X)){
  colnames(X)[i]=as.character(features[['V2']][[i]])
}
y<-rbind(y_train,y_test)
colnames(y)<-"Result"
data<-cbind(X,y)