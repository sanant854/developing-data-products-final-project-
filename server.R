server <- function(input, output) {
  
  xvar <- eventReactive(input$done, {
    mtcars[,input$xvar]
    
  })
  
  col<-eventReactive(input$done,{
    mtcars[,input$col]
  })
  
  
  
  output$plot <- renderPlotly({
    plot_ly(y=mtcars$mpg,x=xvar(),color=col(),type='scatter')
  })
}
shinyApp(ui, server)