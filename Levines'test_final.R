version
if(!require(installr)) {
  + install.packages("installr"); 
  + require(installr)
}

updateR()
#if in Rstudio check in Help for package updates (no code for that)
setwd("/Users/llamasp/Documents/R_Levines")
names1<-dir(path = "/Users/llamasp/Documents/R_Levines/HOBO", pattern = NULL, all.files = FALSE,
            full.names = FALSE, recursive = FALSE,
            ignore.case = FALSE, include.dirs = FALSE)
names1<-as.vector(list.files("/Users/llamasp/Documents/R_Levines/HOBO"))
#check rows number
nL <- length(names1)
#Requires R.utils
library(R.utils)
names2<-unique(sort(names1, decreasing = TRUE))
dim(names2)
names3<-strwrap(sprintf(names2))


                
###dbWriteTable(DBTT, "TRIALS", names4, col.names = FALSE, header = FALSE, overwrite = FALSE, append = TRUE, temporay= FALSE)

        
DS2<-data.frame(Record= rep(i,length(DS1$V3), Episode= as.POSIXlt(DS1$V2, format="%m/%d/%Y %I:%M:%S %p", z="LMT"), Temperature_C=as.numeric(DS1$V3)))


setwd("/Users/llamasp/Documents/R_Levines")
dbConnect(SQLite(), dbname= "DBTT")
directory <- ("./HOBO/")

for (i in (names1)) 
  {
  DS1<-read.csv(file= i, header= FALSE, skip= 2, sep=",", as.is=TRUE)
  TRIAL<-rep(i,length(DS1$V3))
  Episode<-(as.POSIXlt(DS1$V2, format="%m/%d/%Y %I:%M:%S %p", z="LMT", Temperature_C=as.numeric(DS1$V3),header= TRUE))
  Temperature_C<-as.numeric(DS1$V3)
  DS2<- data.frame(TRIAL, Episode, Temperature_C)
  DS3<- subset(DS2, Episode >= ('0017-08-17 16:10:20') & Episode <= ('0017-08-17 16:45:53'))
  DS4<- as.data.frame(DS3)
              }
  
  DS2<- data.frame(c(TRIAL, Episode, Temperature_C,header= TRUE))
  DS3<- subset(DS2, Episode >= ('0017-08-17 16:10:20') & Episode <= ('0017-08-17 16:45:53'))
  DS4<- as.data.frame(DS3)



#it is not recognizing col.names asignation in the loop, I need to either create an empty data frame before second setwd, or change headers names at the end
###create  
dbWriteTable(DBTT, "TC_DL_test", DS4, col.names = TRUE, header = FALSE, overwrite = FALSE,
                append = TRUE, temporay= FALSE)
  

 library(sqldf)
DBTT<-dbConnect(SQLite(), dbname= "DBTT")
dbConnect(SQLite(), dbname= "DBTT")
#########
count(TRIALS)
#Requires R.utils
library(R.utils)
#HOBO data loggers produce a file with data logger name in first column
#It is necesary to delete it and add a new first column with name

library(sqldf)
DBTT<-dbConnect(SQLite(), dbname= "DBTT")
sqldf("attach 'DBTT.sqlite' as new") #This line code is just in case that you want a version of your data base
##Before to ejectue next command, DBTT is the data base name, DS4 is data frame where I hace the data that I need, it can be
 #refered by colum as dataframename.column. Logic operators are really important, so before to run the command be sure that it is
 #what you want.

dbWriteTable(DBTT, "TC_DL_test", DS4, col.names = TRUE, header = FALSE, overwrite = TRUE, append = FALSE, temporay= FALSE)
dbReadTable(con, "mtcars")

#Add some code
a <- 1 + 1


