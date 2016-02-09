library(shiny)
library(fpc)

shinyServer(function(input, output) {      
        output$cplot <- renderPlot({
                cols    <-  input$vars
                colnum <- which(names(mtcars) %in% cols)
                dat <- mtcars[,colnum]
                km_model <- kmeans(x = dat,centers = input$centers)
                plotcluster(dat, km_model$cluster)
        })
})