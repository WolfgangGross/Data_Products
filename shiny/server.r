#shiny server
library(shiny)
library(ggplot2)
library(bit64)
df1 <- readRDS(file="plot_second.Rda")
df2 <- readRDS(file="plot_minute.Rda")
df3 <- readRDS(file="plot_hour.Rda")
shinyServer(
  function(input,output){
    output$outText <- renderPrint(input$timeInput)
    output$plot <- renderPlot({
      temp <-input$timeInput
      if(temp == 'Second'){df  <- df1}
      if(temp == 'Minute'){df  <- df2}
      if(temp == 'Hour'){df  <- df3}
      ggplot(df,aes(x=time,y=count)) + geom_line()
      })
  }  
)