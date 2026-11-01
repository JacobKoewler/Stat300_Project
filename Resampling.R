plant.data <- read.csv("Steel_industry_data.csv")
n <- 2500
set.seed(42)
rand.vect <- sample(x = 1:35040, size = n, replace = FALSE)
sampled.pd <- plant.data[rand.vect, ]

write.csv(
  sampled.pd,
  'C:/Users/yuzew/Documents/Fall 2026/STAT300/Resampled_SIPD.csv',
  row.names = TRUE
  )
