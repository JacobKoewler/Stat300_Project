steel.industry <- read.csv("https://raw.githubusercontent.com/JacobKoewler/Stat300_Project/refs/heads/main/Resampled_SIPD.csv")

set.seed(42)
train_ind <- sample(1:nrow(steel.industry), size = 0.8 * nrow(steel.industry), replace = FALSE)

train_set <- steel.industry[train_ind,]
test_set <- steel.industry[-train_ind,]

###########################################################


model1 <- lm(Usage_kWh ~ Lagging_Current_Reactive.Power_kVarh, data = train_set)
summary(model1)

model2 <- lm(Usage_kWh ~ Leading_Current_Reactive_Power_kVarh, data = train_set)
summary(model2)

model3 <- lm(Usage_kWh ~ CO2.tCO2., data = train_set)
summary(model3)


model4 <- lm(Usage_kWh ~ Lagging_Current_Power_Factor, data = train_set)
summary(model4)


model5 <- lm(Usage_kWh ~ Leading_Current_Power_Factor, data = train_set)
summary(model5)

model6 <- lm(Usage_kWh ~ NSM, data = train_set)
summary(model6)

