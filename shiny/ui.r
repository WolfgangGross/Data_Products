# ui.r defines user interface
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Tweets to Foodball Wold Cup - Brazil vs. Netherlands'),
  sidebarPanel(
    h3('Input'),
    p('Here I present the twitter data of July 12th with was the date of the Foodball Wold Cup game (3rd place).  You see the number of thweets per secon, minute and hour. See how the structre emerges!'),
    radioButtons('timeInput','Choose time interval',c('Second','Minute','Hour'))
    ),
  mainPanel(
    h3('Graph showing number of tweets per'),
    verbatimTextOutput('outText'),
    plotOutput('plot')
    )
  ))