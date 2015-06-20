---
title       : Developing Data Products
subtitle    : Course Project
author      : nuneshub
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
ext_widgets : {rCharts: ["libraries/morris"]}
knit        : slidify::knit2slides
---










## Shiny Application Summary

* Loads financial markets data of equity indices using the R package `quantmod`.
* User visualise data in interactive plot and may switch to data set tabs to inspect data.

### Inputs: Indices & Time range

* Three equity indices: NASDAQ 100 (US), FTSE 100 (UK) and CAC 40 (France).
* Time range starts on 2013-12-31, in order to avoid heaviness dealing with very long series. 

### Outputs: Main plot & Data sets

* Main plot using `rCharts` / plotting package `morris`.
* Data sets from quantmod for the selected indices presented in different tabs using `dTable`.

#### Link to Shiny App: <https://nuneshub.shinyapps.io/project>

--- .class #id 




## Shiny App Layout

<img class=center src=fig/ShinyAppLayout65pc.bmp height=550>

--- .class #id 




## OUTPUT: Main Plot

### Example for indices: NASDAQ 100 (code NDX) and CAC 40 (code FCHI)

<iframe src="fig/mainPlot.html" width=100%, height=600></iframe>

--- .class #id 




## OUTPUT: Data Sets

### Example for the NASDAQ data (code NDX)

<iframe src=' assets/fig/unnamed-chunk-2-1.html ' scrolling='no' frameBorder='0' seamless class='rChart datatables ' id=iframe- charta087ac72a21 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>

















