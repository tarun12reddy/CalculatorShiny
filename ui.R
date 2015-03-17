library(shiny)

shinyUI(navbarPage
        ("Developing Data Products",
         tabPanel("Calculator",
                  fluidPage(
                      fluidRow(
                          column(6,
                                 h4("Note"),
                                 uiOutput("Summary"),
                                 h4("Output"),
                                 textOutput("value")
                                 
                          ), 
                          column(6, 
                                 textInput("var1", label = "Enter Number 1", value = "1"),
                                 textInput("var2", label = "Enter Number 2", value = "1"),
                                 selectInput("var3", label = "Method", choices = list("Addition" = '+', 
                                                                                      "Subtraction" = '-',
                                                                                      "Multiplication" = '*',
                                                                                      "Division" = '/'), selected = "+")
                          )
                      )
                  )
         )
        )     
)