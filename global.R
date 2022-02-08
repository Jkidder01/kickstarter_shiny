library(lubridate)

ks_df <- read.csv("data/kickstarter.csv")

ks_df$launched <- as.Date(ks_df$launched)
ks_df$deadline <- as.Date(ks_df$deadline)

ks_df$launched_week <- floor_date(ks_df$launched, unit = "week")
ks_df$deadline_week <- floor_date(ks_df$deadline, unit = "week")
