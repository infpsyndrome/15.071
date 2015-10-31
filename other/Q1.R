chain=function(N){
  nboots = 10000 # number of iterations
  allM = array(NA,dim=c(nboots)) # initiate an array to store M over the interations

  for (b in 1:nboots){
    # here, add a loop over nboots iteration of randomly generated numbers
    X1 = sample(1:N, N, replace=FALSE) # create 8 numbers randomly without repetition
    count = 0 # set the inital subchian counter to zere.
    for (lp in 1:N) { #loop over the numbers, start at the end and always compare to each before
      if (!((X1[N-lp+1]+1) %in% X1[1:(N-lp)])  & !((X1[N-lp+1]-1) %in% X1[1:(N-lp)])) {
        count = count+1 # Update counter when there is a new subchain
      }
    }
    allM[b]=count
  }

  meanM=mean(allM) # 
  sdM=sd(allM) #  
  print(c(meanM,sdM),digits=10)
}
chain(8)
chain(16)
chain(32)
