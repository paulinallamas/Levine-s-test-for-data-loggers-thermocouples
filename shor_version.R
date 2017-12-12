library(data.table)
LF = list.files(pattern="csv$")
db3<-rbindlist(lapply(setNames(LF,LF),fread, sep= ","), idcol = "source") 

df<- c()
for (x in list.files(pattern="*.csv")) {
  u<-read.table(x,header = FALSE, skip = 10, sep=",")
  u$Label = factor(x)
  df <- rbind(df, u)
  cat(x, skip= 10, sep = ",")
  }
