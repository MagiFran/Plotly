library(plotly)
library(tidyverse)


d <- read.csv("D:/Data_Input/Plotly/GSData.csv")



plot_ly(d, x = ~ASV, y = ~IPS, z = ~SalesValue, color = ~AboveMinSellItems)


plot_ly(d, x = ~ASV, y = ~IPS, color = ~AboveMinSellItems)



d%>%
  filter(!is.na(ASV))%>%
  summarise(mean(ASV))

d%>%
  filter(!is.na(ASV))%>%
  summarise(median(ASV))

summary(d)
