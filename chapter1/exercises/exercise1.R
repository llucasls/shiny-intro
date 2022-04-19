require("shiny")

ui <- fluidPage(
  textInput("name", "What's your name?"),
  numericInput("age", "How old are you?", value = NA, min = 0),
  textOutput("greeting1", inline = FALSE),
  textOutput("greeting2", inline = FALSE)
)

server <- function(input, output, session) {
  output$greeting1 <- renderText({
    stringr::str_interp(
      "Hello. My name is ${input$name}, and I’m ${input$age} years old."
    )
  })

  output$greeting2 <- renderText({
    stringr::str_interp("Hello, ${input$name}. It’s a pleasure to meet you.")
  })
}

app <- shinyApp(ui, server)

port <- Sys.getenv("PORT", 4000)
options(shiny.port = as.numeric(port))

runApp(app)
