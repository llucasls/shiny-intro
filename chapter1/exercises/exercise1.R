require("shiny")

ui <- fluidPage(
  textInput("name", "What's your name?"),
  numericInput("age", "How old are you?", value = NA, min = 0),
  textOutput("greeting", inline = FALSE),
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    paste0(c(
      "Hello. My name is ",
      input$name,
      " and I’m ",
      input$age,
      " years old."
    ))
  })
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
options(shiny.port = as.numeric(port))

runApp(app)
