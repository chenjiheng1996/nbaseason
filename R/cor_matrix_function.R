#' cor_matrix_function
#'
#' This function allows you to get the correlation table among the numerical variables within the selected year
#' @param year_val Which year do you want to set.
#' @keywords nba
#' @export
#' @examples
#' cor_matrix()
#' 
data<-read.csv("Seasons_Stats_NBA.csv")
library(tidyverse)
library(dplyr)

cor_matrix<-function(data,year_val){
  a<-data%>%
    filter(Year == year_val)
  a1<-select_if(a, is.numeric)
  a2<-na.omit(a1)
  a3<-cor(a2)
  return(a3)
}
### the year_val input has to be larger than 1980 after omitting the NA values
###cor_matrix(data, 1982)

