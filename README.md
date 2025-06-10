# Example Repo Project

This repository demonstrates a task-based workflow for a multi-language project with reproducible data pipelines using Python, R, and Bash.

---

## 🔧 Environment Setup

This project uses a **Conda environment** with both Python and R dependencies.

### 1. Install Conda or Mamba (if not already installed)

We recommend [Mamba](https://github.com/mamba-org/mamba) for faster dependency resolution:

```bash
# Mamba install (if conda is installed)
conda install mamba -n base -c conda-forge
```

### 2. Create the environment

```bash
mamba env create -f config/environment.yaml
# OR using conda (slower)
conda env create -f config/environment.yaml
```

### 3. Activate the environment

```bash
conda activate example
```

---

## 📁 Repository Structure

```text
config/                 # YAML and bash config files
data/                   # Sample and processed input data
models/                 # Placeholder for trained models
logs/                   # Output and error logs
results/                # Metrics, plots, and diagnostics
scripts/                # Reusable script components
src/                    # Modular Python and R source code separated into task folders
test/                   # Test data and model outputs for code testing
```

---

## 🚀 Running the Project

### Option 1: Manually run task scripts

```bash
# Python
python src/data-exploration/exploration.py

# R
Rscript src/data-exploration/exploration.R

# Bash
bash src/data-exploration/exploration.sh
```

### Option 2: Use the Makefile

```bash
# Run training and validation steps
make train
make validate
```

---

## 🔄 Configuration

- Edit dataset and output file references in: `config/config.yaml`

---

## 🧪 Reproducibility

All code and environment specifications are version-controlled to ensure reproducible analysis across platforms and collaborators.

