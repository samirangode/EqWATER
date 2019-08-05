Positive_demand_nodes<-function(){
  #ENopen(inp,rpt,out)
  
  N <- ENgetcount("EN_NODECOUNT")
  Demand<-c()
  a <- c(0)
  m<-0
  for(i in 1:N){
   Demand[i] <- ENgetnodevalue(i,"EN_BASEDEMAND")
   if(Demand[i]>0){
     a[m] <- i
     m <- m + 1  
    }  
  }
  a
}