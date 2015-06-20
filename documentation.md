## Developing Data Products
### Documentation for Shiny Application


### Shiny Application summary

This Shiny Application loads financial markets data of equity indices using the R package `quantmod`. The app inputs the indices the user wants to plot and the time range.

The user will be able to visualise the data in the interactive plot and hover over the lines to see the index values and the respective date. Additionally, the user may switch to the data sets tabs to inspect all data.


### Inputs

1. Indices
2. Time range

Three equity indices were chosen as an example, representing benchmarks for US, UK and French equity markets: NASDAQ 100 (US), FTSE 100 (UK) and CAC 40 (France).

For this version the permitted time range starts on 2013-12-31, in order to avoid heaviness dealing with very long series. 


### Outputs

1. Main plot
2. Data sets

Main plot using `rCharts`, and in particular the plotting package called `morris`. This type of chart is particularly interesting for time series as in this case. 

Data sets from quantmod for the selected indices are presented in different tabs using dinamic tables (sortable and searchable) using `dTable`.


### Final Note

Since the indices may have different scales, the user may opt to visualise only one index by inputting the same selection for both index 1 and index 2. The issue with different scales may be overcome by plotting, for example, the relative performance starting from a common point. This is for future work!

