################################################################################
# Developing Data Products - Course Project
# 
# (file sourced in server.R)
################################################################################

# downloading and processing data sets

# data for index NASDAQ 100
getSymbols("^NDX",src="yahoo",from="2013-12-28")     # data set in object NDX
NDX <- data.frame(format(index(NDX),"%Y-%m-%d"),coredata(NDX),
                  stringsAsFactors=FALSE)
colnames(NDX)[1]<-"date"


# Index FTSE 100
getSymbols("^FTSE",src="yahoo",from="2013-12-28")     # data set in object FTSE
FTSE <- data.frame(format(index(FTSE),"%Y-%m-%d"),coredata(FTSE),
                   stringsAsFactors=FALSE)
colnames(FTSE)[1]<-"date"


# data for index CAC 40
getSymbols("^FCHI",src="yahoo",from="2013-12-28")     # data set in object FCHI
FCHI <- data.frame(format(index(FCHI),"%Y-%m-%d"),coredata(FCHI),
                   stringsAsFactors=FALSE)
colnames(FCHI)[1]<-"date"













