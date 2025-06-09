all:
	@echo 'Run pipeline steps here'
train:
	python3 tasks/task-002_model-training/train.py
validate:
	python3 tasks/task-003_validation-results/validate.py