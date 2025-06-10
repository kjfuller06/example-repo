# Create nicknames for commands
.PHONY: all exploration train train_r train_py train_sh validate validate_r validate_py validate_sh

# Define commands
# Default target
all: exploration train validate

# Group all exploration scripts
exploration: exploration_r exploration_py exploration_sh

# Define exploration scripts
exploration_r:
	@echo "Running R exploration script..."
	Rscript src/data-exploration/exploration.R

exploration_py:
	@echo "Running Python exploration script..."
	python3 src/data-exploration/exploration.py

exploration_sh:
	@echo "Running Bash exploration script..."
	bash src/data-exploration/exploration.sh

# Group all training scripts
train: train_r train_py train_sh

# Define training scripts
train_r:
	@echo "Running R training script..."
	Rscript src/model-training/train.R

train_py:
	@echo "Running Python training script..."
	python3 src/model-training/train.py

train_sh:
	@echo "Running Bash training script..."
	bash src/model-training/train.sh

# Group all validation scripts
validate: validate_r validate_py validate_sh

# Define validation scripts (": train"" means Makefile will always run the "train" command first before running each validation command)
validate_r: train_r
	@echo "Running R validation script..."
	Rscript src/model-validation/validate.R

validate_py: train_py
	@echo "Running Python validation script..."
	python3 src/model-validation/validate.py

validate_sh: train_sh
	@echo "Running Bash validation script..."
	bash src/model-validation/validate.sh
