
ks_df <- read.csv('data/ks-projects-201801.csv')

ks_df$launched <- as.Date(ks_df$launched)
ks_df$deadline <- as.Date(ks_df$deadline)
