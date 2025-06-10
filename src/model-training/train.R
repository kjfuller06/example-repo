library(here)
library(yaml)

# Load YAML config
config <- yaml.load_file(here("config", "config.yaml"))
config$paths$root_path = here()

cat("Raw data path:", config$data$raw, "\n")
cat("Model name:", config$model$path, "_", config$model$iteration[[1]]$run_id, ".rds")

df <- read.csv(here(config$data$raw))
model <- lm(y ~ x, data = df)
summary(model)
saveRDS(model, paste0(config$model$path, "_", config$model$iteration[[1]]$run_id, ".rds"))
