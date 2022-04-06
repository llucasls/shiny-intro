require("shiny")

ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

server <- function(input, output, session) {
}

app <- shinyApp(ui, server)

port_env <- as.numeric(Sys.getenv("PORT"))
port <- ifelse(port_env == "", 3500, port_env)

runApp(app, port = port)
