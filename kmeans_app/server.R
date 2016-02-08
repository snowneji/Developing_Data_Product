library(shiny)
library(fpc)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

        
        output$cplot <- renderPlot({
                cols    <-  input$vars
                colnum <- which(names(mtcars) %in% cols)
                dat <- mtcars[,colnum]
                km_model <- kmeans(x = dat,centers = input$centers)
                
                
                # draw the histogram with the specified number of bins
                plotcluster(dat, km_model$cluster)
        })
})