df <- read.csv('../../data/sample.csv')
mse <- mean((df$y - df$x*2)^2)
print(paste('MSE:', mse))