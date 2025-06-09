library(here)
library(yaml)

# Load YAML config
config <- yaml.load_file(here("config", "config.yaml"))

cat("Raw data path:", config$data$raw, "\n")

df <- read.csv(here(config$data$raw))
mse <- mean((df$y - df$x*2)^2)
print(paste('MSE:', mse))
