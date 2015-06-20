################################################################################
# 
# Developing Data Products - Course Project (server.R)
# 
################################################################################

# Load file for downloading and processing data sets
source("data.R")

# function
indexToData<-function(x) {
    if(x=="NDX"){
        datTmp<-NDX
    } else {
        if(x=="FTSE"){
            datTmp<-FTSE
        } else {
            datTmp<-FCHI
        }
    }
    return(datTmp)
}


# server.r
shinyServer(
    function(input, output) {
        
        output$idxCode1 <- renderPrint({input$idxCode1})
        output$idxCode2 <- renderPrint({input$idxCode2})
        output$dateIni <- renderPrint({input$dateIni})
        output$dateEnd <- renderPrint({input$dateEnd})
        
        output$chart1 <- renderChart2({

            dat1<<-indexToData(input$idxCode1)
            dat2<<-indexToData(input$idxCode2)
            
            dat<<-join(dat1,dat2,type="inner",by="date")

            dat[,5]<<-round(dat[,5],2)
            dat[,11]<<-round(dat[,11],2)

            date1<-input$dateIni
            date2<-input$dateEnd
            dat<<-subset(dat,date>date1 & date<date2)
            
#             minY<-min(dat[,5],dat[,11])
#             maxY<-max(dat[,5],dat[,11])
            
            p <- mPlot(x="date",y=c(colnames(dat)[5],colnames(dat)[11]),
                       data=dat,type="Line")
            p$set(pointSize=0,lineWidth=3)
            p$set(hideHover="auto")
            
#             p2$chart(forceY=c(minY,maxY))   # doesn't work for morris charts

            return(p)
            
        })
        
        output$mytable1 <- renderChart2({
            dat1<<-indexToData(input$idxCode1)  # needed to refresh data set
            dat2<<-indexToData(input$idxCode2)  # needed to refresh data set
            dTable(dat1,sPaginationType="full_numbers")
        })
        
        output$mytable2 <- renderChart2({
            dat1<<-indexToData(input$idxCode1)  # needed to refresh data set
            dat2<<-indexToData(input$idxCode2)  # needed to refresh data set
            dTable(dat2,sPaginationType="full_numbers")
        })
        
    }
)


























