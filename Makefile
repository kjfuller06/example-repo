# Create nicknames for commands
.PHONY: all example train train_r train_py train_sh validate validate_r validate_py validate_sh

# Define commands
# Default target
all: example train validate

# Group all example scripts
example: example_r example_py example_sh

# Define example scripts
example_r:
	@echo "Running R example script..."
	Rscript tasks/data-exploration/example.R

example_py:
	@echo "Running Python example script..."
	python3 tasks/data-exploration/example.py

example_sh:
	@echo "Running Bash example script..."
	bash tasks/data-exploration/example.sh

# Group all training scripts
train: train_r train_py train_sh

# Define training scripts
train_r:
	@echo "Running R training script..."
	Rscript tasks/model-training/train.R

train_py:
	@echo "Running Python training script..."
	python3 tasks/model-training/train.py

train_sh:
	@echo "Running Bash training script..."
	bash tasks/model-training/train.sh

# Group all validation scripts
validate: validate_r validate_py validate_sh

# Define validation scripts (": train"" means Makefile will always run the "train" command first before running each validation command)
validate_r: train_r
	@echo "Running R validation script..."
	Rscript tasks/model-validation/validate.R

validate_py: train_py
	@echo "Running Python validation script..."
	python3 tasks/model-validation/validate.py

validate_sh: train_sh
	@echo "Running Bash validation script..."
	bash tasks/model-validation/validate.sh
