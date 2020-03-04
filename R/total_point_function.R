#' total_point_function
#'
#' This function allows you get the total points made at specific year when your input the dataset and the year you want.
#' @param year_val Which year do you want to set.
#' @keywords nba, total points
#' @export
#' @examples
#' total_points()

data<-read.csv("Seasons_Stats_NBA.csv")
library(tidyverse)
library(dplyr)
total_points<-function(data,year_val){
  total_point<-data%>%
    filter(Year == year_val)%>%
    select(PTS)%>%
    colSums(data$PTS)
  a<-paste("Total Point Is", total_point)
  return(a)
}
#total_points(data, 1955)

 
