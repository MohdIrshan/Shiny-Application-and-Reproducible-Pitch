

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculate the total calories burnt during jogging"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    
    sidebarPanel(
       h5("Application for calorie consumption calculation"),
  
       h5("Factor inputs "),
      
        sliderInput("age",
                   "Please select your age:",
                   min = 1,
                   max = 120,
                   value = 30),
    
      sliderInput("Wt",
                  "Please enter weight in pounds:",
                  min = 100,
                  max = 500,
                  value = 300),
      
      h5("For heartrate, take the average over that period of time"),
  
      sliderInput("hr",
                  "Please select your heart rate:",
                  min = 40,
                  max = 200,
                  value = 72),
  
      sliderInput("time",
                  "Please select your time in mins:",
                  min = 1,
                  max = 1000,
                  value = 30)
  ),
    
    # Show a plot of the generated distribution
    mainPanel(
       h3("Using all the factors to calculate the calorie consumption for a healthy individual"),
              h4("Total estimate number of calories burnt in Kcals :"),
      
       textOutput("cals"),
       
       
       
      
       h5("Note: This application was built by Mohammad Irshan on 2nd June 2020")
       
    )
  )
))
