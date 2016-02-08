library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        titlePanel("Clustering of Mtcars Data using Kmeans Method"),
        h5('Yifan Wang'),
        sidebarLayout(
                
                sidebarPanel( 
                       checkboxGroupInput("vars", 
                                          label = h3("Select Variables for Clustering"), 
                                          choices = list("mpg"="mpg","cyl"="cyl",
                                                        "disp"="disp","hp"="hp",
                                                        "drat"="drat","wt"="wt",
                                                        "qsec"="qsec","vs"="vs",
                                                        "am"="am","gear"="gear",
                                                        "carb"="carb"),
                                          selected = c('cyl','mpg')),
                       sliderInput("centers", 
                                   label = h3("Select the Number of Clusters "), 
                                   min = 2,max=11,step=1,
                                   value = 5)),
                
                       mainPanel(plotOutput("cplot",height = '600px'))
                       
                       
                       )
       
))