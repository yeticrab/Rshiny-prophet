library(shinydashboard)
library(shinythemes)
library(shiny)

### The shiny header

header = dashboardHeader(
  title = "Forecast"
)

### The shiny sidebar

sidebar = dashboardSidebar(
  ## menu items - one for each tab
  sidebarMenu(
    menuItem("Data input"  , tabName = "data"
      ,menuSubItem("Data series"              , tabName = "datainput", selected = TRUE)
      ,menuSubItem("Data input changepoints"  , tabName = "datainput_changepoints")
      ,menuSubItem("Data input anomalies"     , tabName = "datainput_anomalies")
      ,menuSubItem("Data input spend"         , tabName = "datainput_spends")
      ,menuSubItem("Data forecast"            , tabName = "datainput_forecast")
    )
    ,menuItem("Data Explore", tabName = "dataexplore")
    ,menuItem("Forecast"    , tabName = "forecast")
    ,menuItem("Optimise"    , tabName = "optimise")
    ,menuItem("Output"      , tabName = "results")
    ,menuItem("Scoring"     , tabName = "results")
  )

)

### The shiny body

body = dashboardBody(
  tabItems(
    import_file_ui
    ,explore_ui 
  )
)


dashboardPage(
  header,
  sidebar,
  body
)







