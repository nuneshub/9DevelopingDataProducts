################################################################################
# 
# Developing Data Products - Course Project (ui.R)
# 
################################################################################
require(shiny)
require(quantmod)
require(ggplot2)
require(rCharts)
require(reshape2)
require(plyr)
options(RCHART_LIB='morris')


shinyUI(
    navbarPage("Developing Data Products",
               tabPanel("Shiny App",
                        sidebarPanel(
                            
                            # input vars: idxCode1,idxCode2,dateIni,dateEnd
                            
                            selectInput(inputId="idxCode1",
                                        label="Select index 1:",
                                        choices=c("NASDAQ 100 (NDX)"="NDX",
                                                  "FTSE 100 (FTSE)"="FTSE",
                                                  "CAC 40 (FCHI)"="FCHI"),
                                        selected=c("NASDAQ 100 (NDX)"="NDX")
                            ),
                            
                            selectInput(inputId="idxCode2",
                                        label="Select index 2:",
                                        choices=c("NASDAQ 100 (NDX)"="NDX",
                                                  "FTSE 100 (FTSE)"="FTSE",
                                                  "CAC 40 (FCHI)"="FCHI"),
                                        selected=c("CAC 40 (FCHI)"="FCHI")
                            ),
                            
                            dateInput(inputId="dateIni",
                                      label="Start Date:",
                                      value="2014-12-31",
                                      min="2013-12-31",
                                      max=NULL,
                                      format="yyyy-mm-dd"
                            ),
                            
                            dateInput("dateEnd","End Date:"),
                            submitButton("Submit")
                            
                        ),
                        mainPanel(
                            tabsetPanel(
                                
                                tabPanel(p(icon("line-chart"),"Plot data"),
                                         h3("Inputs",align="left"),
                                         
                                         h4('Index 1:'),
                                         verbatimTextOutput("idxCode1"),
                                         h4('Index 2:'),
                                         verbatimTextOutput("idxCode2"),
                                         h4('Start Date:'),
                                         verbatimTextOutput("dateIni"),
                                         h4('End Date:'),
                                         verbatimTextOutput("dateEnd"),
                                         
                                         br(),
                                         
                                         h3("Benchmark Equity Indices"),
                                         showOutput("chart1",lib="morris")
                                         
                                ),
                                
                                tabPanel(p(icon("table"),"Dataset 1"),
                                         h3("Dataset 1 Table"),
                                         br(),
                                         chartOutput("mytable1","datatables") 
                                ),
                                
                                tabPanel(p(icon("table"),"Dataset 2"),
                                         h3("Dataset 2 Table"),
                                         br(),
                                         chartOutput("mytable2","datatables") 
                                )
                                
                            )
                        )
               ),
               
               
               tabPanel("About",
                        mainPanel(
                            includeMarkdown("documentation.md")
                        )
               )
    )
    
)





























