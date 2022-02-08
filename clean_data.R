# data from https://www.kaggle.com/kemical/kickstarter-projects
library(lubridate)

df_2018 <- read.csv("data/ks-projects-201801.csv")
df_2018$launched <- lubridate::as_datetime(df_2018$launched)
df_2018$deadline <- lubridate::as_datetime(df_2018$deadline)
df_2018 <- subset(df_2018, launched > "1970-01-01")
min(df_2018$launched)
max(df_2018$launched)

keep_cols <- c(
  "ID", "name", "main_category", "category",
  "country", "launched", "deadline", "backers",
  "usd_pledged_real", "usd_goal_real", "state"
)

df_2018 <- df_2018[, keep_cols]
names(df_2018) <- gsub("_real", "", names(df_2018), fixed = TRUE)

write.csv(df_2018, "kickstarter.csv", row.names = FALSE)
