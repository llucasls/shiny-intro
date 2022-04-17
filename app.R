require("shiny")

ui <- fluidPage(
  titlePanel(title = "Shiny Intro", windowTitle = "My First Shiny App"),
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

server <- function(input, output, session) {
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })

  output$summary <- renderPrint({
    summary(dataset())
  })

  output$table <- renderTable({
    dataset()
  })
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
options(shiny.port = as.numeric(port))

runApp(app)
