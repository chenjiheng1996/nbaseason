#' oldest_player_function
#'
#' This function allows you get the total points made at specific year when your input the dataset and the year you want.
#' @param data The dataset you are loading in this function
#' @param year_val Which year do you want to set.
#' @keywords nba, oldest player
#' @export
#' @examples
#' oldest_player()
#' oldest_player(data,year_val)

data<-read.csv("Seasons_Stats_NBA.csv")
library(tidyverse)
library(dplyr)
oldest_player<-function(data,year_val){
  oldest<-data%>%
    filter(Year == year_val)%>%
    select(Player,Age)%>%
    arrange(Player, desc(Age))%>%
    top_n(1)
  return(oldest)
}
#oldest_player(data, 1961)


