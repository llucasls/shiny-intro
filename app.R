require("shiny")

ui <- fluidPage(
  "Hello, world!"
)
server <- function(input, output, session) {
}

app <- shinyApp(ui, server)

port_env <- as.numeric(Sys.getenv("PORT"))
port <- ifelse(port_env == "", 3500, port_env)

runApp(app, port = port)
