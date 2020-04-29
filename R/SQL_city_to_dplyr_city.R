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
interview$transcript <- ifelse(str_detect(interview$transcript, "SQL"), 
                               "I was hired by a woman with a lot of money. I don't know her name but I know she's around 65 or 67. She has red hair and she drives a Tesla Model S. I know that she attended the dplyr City Concert 3 times in December 2017.\n", 
                               interview$transcript)

interview[nrow(interview) + 1,] = list(99716,"I confess, I had no choice but to silence the man...")

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
