library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    plot(mtcars$wt[mtcars$cyl == input$cyls & mtcars$am == input$automan &
                       mtcars$gear == input$gears], 
         mtcars$mpg[mtcars$cyl == input$cyls & mtcars$am == input$automan &
                        mtcars$gear == input$gears], 
         xlab = "Weight (Pounds x1000)", ylab = "MPG", xlim = c(0,6), ylim = c(0,35),
         main = "Observations (if any) from mtcars data set, based on input to the left")
  })
  
})
