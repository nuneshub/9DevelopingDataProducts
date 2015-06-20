################################################################################
# Developing Data Products - Course Project
# 
# (file sourced in index.Rmd for slidify presentation)
################################################################################

require(shiny)
require(quantmod)
require(ggplot2)
require(rCharts)
require(reshape2)
require(plyr)
library(slidify)


# data for index NASDAQ 100
getSymbols("^NDX",src="yahoo",from="2013-12-28")     # data set in object NDX
NDX <- data.frame(format(index(NDX),"%Y-%m-%d"),coredata(NDX),
                   stringsAsFactors=FALSE)
colnames(NDX)[1]<-"date"

# data for index CAC 40
getSymbols("^FCHI",src="yahoo",from="2013-12-28")     # data set in object FCHI
FCHI <- data.frame(format(index(FCHI),"%Y-%m-%d"),coredata(FCHI),
                   stringsAsFactors=FALSE)
colnames(FCHI)[1]<-"date"

dat1<-NDX
dat2<-FCHI
dat<-join(dat1,dat2,type="inner",by="date")

dat[,5]<-round(dat[,5],2)
dat[,11]<-round(dat[,11],2)






























