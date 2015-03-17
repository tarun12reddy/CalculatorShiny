
shinyServer(function(input, output, session){
    
    Input <- reactive({
        input_1 <- input$var1
        input_2 <- input$var2
        input_sym <- input$var3
        input_all <- c(input_1, input_2, input_sym)
        return (input_all)
    })
    
    output$value <- renderText({
        data <- Input()
        
        if (as.numeric(data[2]) == 0){
            ans = "Number 2 cannot be zero"
        } else {
            if(data[3] == "+"){
                ans = as.numeric(data[1]) + as.numeric(data[2])
            }
            if(data[3] == "-"){
                ans = as.numeric(data[1]) - as.numeric(data[2])
            }
            if(data[3] == "*"){
                ans = as.numeric(data[1]) * as.numeric(data[2])
            }
            if(data[3] == "/"){
                ans = as.numeric(data[1]) / as.numeric(data[2])
            }
        }
        as.character(ans)
    })
    
    output$Summary <- renderUI(HTML(
        "<ul>
        <li> Small Demonstration of Implementation of Calculator </li>
        </ul>"))
    
})