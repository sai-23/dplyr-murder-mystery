#'
#' This is the R code I used to change SQL City to dplyr City. 
#'

library(tidyverse)

#'
#' Load data
#'

load("data/dplyr_murder_mystery.Rda")

#'
#' Make the change
#'

crime_scene_report$city <- ifelse(str_detect(crime_scene_report$city, "SQL"), 
                                  "dplyr City", 
                                  crime_scene_report$city)

#'
#' Save the data back into an Rda format
#'

save(crime_scene_report,
     drivers_license,
     facebook_event_checkin,
     get_fit_now_checkin,
     get_fit_now_member,
     income,
     interview,
     person,
     file = "data/dplyr_murder_mystery.Rda")
