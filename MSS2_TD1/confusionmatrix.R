## Confusion matrix
Confusion.Matrix <- function(Ref,Pred){
  CM <- table(as.numeric(Ref)-1,as.vector(round(Pred)))
  values <- unique(Ref)
  colnames(CM) <- c(sprintf("c_%s",values[1]),sprintf("c_%s",values[2]))
  rownames(CM) <- c(sprintf("t_%s",values[1]),sprintf("t_%s",values[2]))
  CM.pc <- round(CM / rep(margin.table(CM,1),1),4)*100
  return(list(CM=CM,CM.pc=CM.pc))
}


## Confusion matrix
Confusion.Matrix.Th <- function(Threshold,Ref,Pred){
  Pred.classes <- Pred
  Pred.classes[Pred<=Threshold] <- 0
  Pred.classes[Pred>Threshold] <- 1
  CM <- table(as.numeric(Ref)-1,Pred.classes)
  colnames(CM) <- c(sprintf("c_%s",values[1]),sprintf("c_%s",values[2]))
  rownames(CM) <- c(sprintf("t_%s",values[1]),sprintf("t_%s",values[2]))
  CM.pc <- round(CM / rep(margin.table(CM,1),1),4)*100
  return(list(CM=CM,CM.pc=CM.pc))
}