library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("mtcars Data"),
  
  # Sidebar with 3 selectors to narrow data 
  sidebarLayout(
    sidebarPanel(
        h3("Instructions:"),
        h5("Change the values of the selectors below to plot the observations from the mtcars data set which match the selected critera."),
        br(),
        selectInput("cyls", "Cylinders:",
                    c("4" = 4,
                      "6" = 6,
                      "8" = 8)),
        selectInput("automan", "Tranmission:",
                    c("Automatic" = 0,
                      "Manual" = 1)),
        selectInput("gears", "Gears:",
                    c("3" = 3,
                      "4" = 4,
                      "5" = 5)), br(),
        h5("Please see https://github.com/cgtyoder/DevDataProdWk4 for the server.R and ui.R files")
        ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
