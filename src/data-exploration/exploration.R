library(here)
library(yaml)

# Load YAML config
config <- yaml.load_file(here("config", "config.yaml"))
config$paths$root_path = here()
data_mode <- Sys.getenv("DATA_MODE", unset = "real")

if (data_mode == "real") {
  data_path <- config$data$raw
} else {
  data_path <- here("test", "sample.csv")
}

cat("Raw data path:", data_path, "\n")

df <- read.csv(data_path)
summary(df)
