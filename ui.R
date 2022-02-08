library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      # TODO: add ability to filter by date

      # TODO: add ability to filter by state

      # TODO: add ability to filter by main_category
    ),
    mainPanel(
      plotOutput("ts_plot")
    )
  )
)
