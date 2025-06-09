.PHONY: all train train_r train_py train_sh validate validate_r validate_py validate_sh

# Default target
all: train validate

# Grouped training target
train: train_r train_py train_sh

train_r:
	@echo "Running R training script..."
	Rscript tasks/model-training/train.R

train_py:
	@echo "Running Python training script..."
	python3 tasks/model-training/train.py

train_sh:
	@echo "Running Bash training script..."
	bash tasks/model-training/train.sh

# Grouped validation target (depends on training)
validate: validate_r validate_py validate_sh

validate_r: train
	@echo "Running R validation script..."
	Rscript tasks/model-validation/validate.R

validate_py: train
	@echo "Running Python validation script..."
	python3 tasks/model-validation/validate.py

validate_sh: train
	@echo "Running Bash validation script..."
	bash tasks/model-validation/validate.sh
