title: Data Preparation
description: create single csv file that contains required variables to be used in the visualization phase
inputs: individual csv files of the players
outputs: one synthesized csv file
  
curry <- read.csv("data/stephen-curry.csv", stringsAsFactors = FALSE)
iguodala <- read.csv("data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("data/klay-thompson.csv", stringsAsFactors = FALSE)

curry$name <- c("Stephen Curry")
iguodala$name <- c("Andre Iguodala")
green$name <- c("Draymond Green")
durant$name <- c("Kevin Durant")
thompson$name <- c("Klay Thompson")

library(dplyr)
curry$shot_made_flag <- replace(curry$shot_made_flag, curry$shot_made_flag == "y", "shot_yes")
curry$shot_made_flag <- replace(curry$shot_made_flag, curry$shot_made_flag == "n", "shot_no")
iguodala$shot_made_flag <- replace(iguodala$shot_made_flag, iguodala$shot_made_flag == "y", "shot_yes")
iguodala$shot_made_flag <- replace(iguodala$shot_made_flag, iguodala$shot_made_flag == "n", "shot_no")
green$shot_made_flag <- replace(green$shot_made_flag, green$shot_made_flag == "y", "shot_yes")
green$shot_made_flag <- replace(green$shot_made_flag, green$shot_made_flag == "n", "shot_no")
durant$shot_made_flag <- replace(durant$shot_made_flag, durant$shot_made_flag == "y", "shot_yes")
durant$shot_made_flag <- replace(durant$shot_made_flag, durant$shot_made_flag == "n", "shot_no")
thompson$shot_made_flag <- replace(thompson$shot_made_flag, thompson$shot_made_flag == "y", "shot_yes")
thompson$shot_made_flag <- replace(thompson$shot_made_flag, thompson$shot_made_flag == "n", "shot_no")

curry$minute <- (curry$period*12) - curry$minutes_remaining
iguodala$minute <- (iguodala$period*12) - iguodala$minutes_remaining
green$minute <- (green$period*12) - green$minutes_remaining
durant$minute <- (durant$period*12) - durant$minutes_remaining
thompson$minute <- (thompson$period*12) - thompson$minutes_remaining

sink(file = "output/stephen-curry-summary.txt")
summary(curry)
sink()

sink(file = "output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

sink(file = "output/draymond-green-summary.txt")
summary(green)
sink()

sink(file = "output/kevin-durant-summary.txt")
summary(durant)
sink()

sink(file = "output/klay-thompson-summary.txt")
summary(thompson)
sink()

shots_data <- rbind(curry, iguodala, green, durant, thompson)
write.csv(shots_data, "data/shots-data.csv")

sink(file = "output/shots-data-summary.txt")
summary(shots_data)
sink()