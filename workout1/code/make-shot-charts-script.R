title: Shot Charts
description: code to create the shot charts of each player
inputs: each dataframe containg shot data of each player
outputs: shot charts of each player

court_file <- "images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc")
)

curry_plot <- ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Stephen Curry (2016 season)") + theme_minimal()
ggsave(filename = "images/stephen-curry-shot-chart.pdf", plot = curry_plot, width = 6.5, height = 5, units = c("in"))

iguodala_plot <- ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Andre Iguodala (2016 season)") + theme_minimal()
ggsave(filename = "images/andre-iguodala-shot-chart.pdf", plot = iguodala_plot, width = 6.5, height = 5, units = c("in"))

green_plot <- ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Draymond Green (2016 season)") + theme_minimal()
ggsave(filename = "images/draymond-green-shot-chart.pdf", plot = green_plot, width = 6.5, height = 5, units = c("in"))

thompson_plot <- ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Klay Thompson (2016 season)") + theme_minimal()
ggsave(filename = "images/klay-thompson-shot-chart.pdf", plot = thompson_plot, width = 6.5, height = 5, units = c("in"))

durant_plot <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Chart: Kevin Durant (2016 season)") + theme_minimal()
ggsave(filename = "images/kevin-durant-shot-chart.pdf", plot = durant_plot, width = 6.5, height = 5, units = c("in"))


shots_plot <- ggplot(data = shots_data) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x=x, y=y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle("Shot Charts: GSW (2016 season)") + theme_minimal() + face_grid(~name)
ggsave(filename = "images/gsw-shot-charts.pdf", plot = durant_plot, width = 8, height = 7, units = c("in"))

png(filename = "images/gsw-shot-charts.png")
shots_plot
dev.off()
