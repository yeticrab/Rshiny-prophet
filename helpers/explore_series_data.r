###
#  Roger C Gill, 2018-01-03
#  Description : Explores time sereies data
#  Usage       : Place the following code snippets within the dashboard
#    1 : explore_series_parameters should be placed within a tabItem in a tab
#	   2 : explore_series_output should be placed within the server.UI code
###
library(plotly)



explore_data = box(
  width = 8
  ,status = "info"
  # Output: Data file
  ,uiOutput("parameter_selection")
)

# This should be placed within the tabitem
explore_ui = tabItem(
  "dataexplore"
  ,fluidRow(
    uiOutput("parameter_selection")
  )
)

explore_parameters_server = function(input, output) {
  
  output$parameter_selection = renderUI({
    print(head(indata))
    box(
      width = 4
      ,status = "info"
      ,selectInput('x', 'Date',              choices = attributes(indata)$date_par, selected  = attributes(indata$date_par[1]))
      ,selectInput('y', 'Measure',           choices = attributes(indata)$measures, selected  = attributes(indata)$measures[1])
      ,selectInput('color', 'Color',         choices = attributes(indata)$factors , selected  = attributes(indata)$factors[1])
      ,selectInput('facet_row', 'Dimension', choices = c('none', attributes(indata)$factors), selected = 'none')
      ,checkboxInput("log_t", "Log", FALSE)
   )
  })
}