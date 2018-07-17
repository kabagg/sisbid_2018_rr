#' ---
#' title: "Baby names"
#' author: "Karl Broman"
#' date: "`r Sys.Date()`"
#' ---

#' Another attempt at my baby names analysis

#' I first load some packages
#+ message=FALSE
library(babynames)
library(dplyr)
library(ggplot2)

#' I'm going to grab all of the Karl and Carl records, with only the males
karls <- babynames %>% 
  filter(name=="Karl" | name=="Carl", sex=="M")

#' Here's a line plot.
#+ fig.width=11, fig.height=5
karls %>% 
  ggplot(aes(x=year, y=n)) +
  geom_line(aes(color=name))
