library(here)
library(yaml)

# Load config using 'here'
config <- yaml.load_file(here('config.yaml'))
df <- read.csv(here(config$data$raw))
summary(df)
