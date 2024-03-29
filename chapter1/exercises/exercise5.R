require("shiny")
require("ggplot2")

datasets <- c("economics", "faithfuld", "seals")
ui <- fluidPage(
  selectInput("dataset", "Dataset", choices = datasets, width = "12em"),
  verbatimTextOutput("summary"),
  tableOutput("plot")
)

server <- function(input, output, session) {
  dataset <- reactive({
    get(input$dataset, "package:ggplot2")
  })
  output$summary <- renderPrint({
    summary(dataset())
  })
  output$plot <- renderPlot({
    plot(dataset())
  }, res = 96, width = 10, height = 5)
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
runApp(app, port = as.numeric(port))
