# Variables
PYTHON_VERSION=3.12
AIRFLOW_VERSION=3.1.8
ENV_NAME = env

# OS detection
ifeq ($(OS),Windows_NT)
    PYTHON := python
    VENV_BIN := $(ENV_NAME)/Scripts
else
    PYTHON := python3
    VENV_BIN := $(ENV_NAME)/bin
endif

.PHONY: create-py-env

create-py-env: ## Créer un nouvel environnement python
	@echo "Création d'un environnement"
	$(PYTHON) -m venv $(ENV_NAME)
	@echo "L'environnement a été créé"
	@echo "Activation du nouvel environnement"
	@echo "Exécuter dans votre terminal: source $(ENV_NAME)/bin/activate"


install-py-packages: ## Installer les packages python
	@echo "Installation/Mise à jour de pip"
	$(VENV_BIN)/python -m pip install --upgrade pip
	@echo "Installation de uv"
	$(VENV_BIN)/python -m pip install uv
	$(VENV_BIN)/uv pip install --python $(VENV_BIN)/python -r requirements.txt


install-pre-commit: ## Installer pre-commit
	$(VENV_BIN)/pre-commit install

test: ## Lancer les tests pytest
	$(VENV_BIN)/python -m pytest tests/
