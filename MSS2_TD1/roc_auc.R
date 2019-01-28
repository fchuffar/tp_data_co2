## 
##
## computes ROC data for 1 threshold
ROC.Data <- function(ref,ppred,thres,print=FALSE){
  Ps=(ppred>thres)*1
  FP=sum((Ps==1)*(ref==0))/sum(ref==0)
  TP=sum((Ps==1)*(ref==1))/sum(ref==1)
  if(print==TRUE){
    print(table(Observed=ref,Predicted=Ps))
    }
  vect=c(FP,TP)
  names(vect)=c("FPR","TPR")
  return(vect)
  }

## computes aera under curve
AUC <- function(roc){
roc.N <- dim(roc)[1]
return( -sum( (roc$FPR[2:roc.N]-roc$FPR[1:(roc.N-1)]) * 1/2 * (roc$TPR[2:roc.N]+roc$TPR[1:(roc.N-1)]) ) )
}

## get ROC and AUC data from ref & predicted values for N thresholds
ROC_AUC.Curve <- function(N,Ref,Pred){
  roc.data <- data.frame(0:N,0:N)
  colnames(roc.data) <- c("FPR","TPR")
  sref <- as.numeric(Ref)
  sref <- (sref-min(sref))/(max(sref)-min(sref))
  for (i in 0:N) {
    roc.data[i+1,] <- ROC.Data(sref,Pred, i/N, F)
    }
  auc.data <- AUC(roc.data)
  return(list(Threshold=seq(from=0,to=N,len=N+1)/N,ROC.data=roc.data,AUC.data=auc.data))
}

## plot ROC curve & AUC
ROC.Plot <- function(roc.curve,modellabel){
  plot(xlim=c(0,1),ylim=c(0,1),x=NULL,y=NULL, ylab="TPR", xlab="FPR", main=sprintf("ROC - %s",modellabel))
  mtext(sprintf("AUC = %.3f",roc.curve$AUC.data))
  polygon(c(0,0,1,1), c(0,1,1,0),col='yellow')
  polygon(c(roc.curve$ROC.data$FPR,1), c(roc.curve$ROC.data$TPR,0),col='darkblue')
  abline(a=0,b=1,col="red")
}


  
