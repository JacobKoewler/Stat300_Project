steel.industry <- read.csv("C:/College/STAT300/Resampled_SIPD.csv")

set.seed(42)
train_ind <- sample(1:nrow(steel.industry), size = 0.8 * nrow(steel.industry), replace = FALSE)

train_set <- steel.industry[train_ind,]
test_set <- steel.industry[-train_ind,]


# Graphs
library(ggplot2)
ggplot(train_set, mapping = aes(x = Lagging_Current_Power_Factor, y = Usage_kWh)) +
  geom_point(size = 0.5, alpha = 0.8, fill = "black") +
  theme_classic() +
  labs(
    title = "Lagging Power factor vs Total Usage",
    x = "Lagging Power Factor",
    y = "Usage (kWh)"
  )

## In this plot, we see a non-linear relationship between the Lagging Power factor and the total energy usage. We can see that total usage remains low until a lagging power factor of 70.


ggplot(train_set, mapping = aes(x = Leading_Current_Power_Factor, y = Usage_kWh)) +
  geom_point(size = 0.5, alpha = 0.8, fill = "black") +
  theme_classic() +
  labs(
    title = "Leading Power Factor vs Total Usage",
    x = "Leading Power Factor",
    y = "Total Usage (kWh)"
    )

# In this plot, we see a non-linear relationship between the leading power factor and the total usage. There is a weak positive association between these two variables. .

ggplot(train_set, mapping = aes(x = NSM, y = Usage_kWh)) +
  geom_point(size = 0.5, alpha = 0.8, fill = "black") +
  geom_smooth(method = "lm") +
  theme_classic() +
  labs(
    title = "NSM vs total usage",
    x = "Number of Seconds from midnight",
    y = "Total Usage (kWh)"
  )

# In this plot, we can see the relationship of the number of seconds from Midnight and total usage. There is a weak positiveassociation between the two variables.

ggplot(train_set, mapping = aes(x = CO2.tCO2., y = Usage_kWh)) +
  geom_point(size = 0.5, alpha = 0.8, fill = "black") +
  geom_smooth(method = "lm") +
  theme_classic() +
  labs(
    title = "CO2 Emissions vs Total Usage",
    x = "CO2 Emissions (parts per million)",
    y = "Usage (kWh)"
  )

# In this plot, we can see there is a strong positive linear association between CO2 emissions and total Usage.

