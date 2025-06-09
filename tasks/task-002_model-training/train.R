df <- read.csv('../../data/sample.csv')
model <- lm(y ~ x, data = df)
summary(model)