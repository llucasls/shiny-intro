require("shiny")

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  textOutput("product")
)

server <- function(input, output, session) {
  output$product <- renderText({
    input$x * 5
  })
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
runApp(app, port = as.numeric(port))
