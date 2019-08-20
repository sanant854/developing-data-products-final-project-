library(shiny)
library(plotly)
library(miniUI)

ui <- fluidPage(
  gadgetTitleBar("Plotting what you want"),
  radioButtons("xvar","Select the x variable",choices=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb")),
  radioButtons("col","Select the coloured variable",choices=c("cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb")),
  plotlyOutput("plot")
)
