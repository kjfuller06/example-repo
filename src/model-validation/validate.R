library(here)
library(yaml)

# Load YAML config
config <- yaml.load_file(here("config", "config.yaml"))
config$paths$root_path = here()
data_mode <- Sys.getenv("DATA_MODE", unset = "real")

if (data_mode == "real") {
  data_path <- config$data$raw
  model_path = paste0(config$model$path, "_", config$model$iteration[[1]]$run_id, ".rds")
} else {
  data_path <- here("test", "sample.csv")
  model_path <- here("test", "testmodel.rds")
}

cat("Raw data path:", data_path, "\n")
cat("Model name:", model_path, "\n")

df <- read.csv(data_path)
mse <- mean((df$y - df$x*2)^2)
print(paste('MSE:', mse))
