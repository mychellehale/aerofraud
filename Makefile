.PHONY: help install lint format test type-check all clean setup-hooks

# Default target
.DEFAULT_GOAL := help

# Help command
help:
	@echo "AeroFraud Development Commands"
	@echo "================================"
	@echo "make install       - Install all dependencies"
	@echo "make setup-hooks   - Install pre-commit hooks"
	@echo "make lint          - Run linting checks"
	@echo "make format        - Auto-format code"
	@echo "make type-check    - Run type checking"
	@echo "make test          - Run test suite"
	@echo "make test-fast     - Run tests without coverage"
	@echo "make all           - Run all checks (CI simulation)"
	@echo "make ready         - Format, fix, and check everything"
	@echo "make clean         - Remove build artifacts"

# Install dependencies
install:
	uv sync --all-extras

# Setup pre-commit hooks
setup-hooks:
	uv run pre-commit install
	uv run pre-commit run --all-files

# Linting (check only)
lint:
	uv run ruff check src tests

# Auto-fix linting issues
lint-fix:
	uv run ruff check --fix src tests

# Format code
format:
	uv run ruff format src tests

# Type checking
type-check:
	uv run mypy src

# Run full test suite with coverage
test:
	uv run pytest

# Run tests without coverage (faster)
test-fast:
	uv run pytest --no-cov

# Run specific test file
test-file:
	uv run pytest $(FILE)

# Run all checks (what CI will run)
all: lint type-check test

# Prepare for commit (format, fix, then check)
ready: format lint-fix all
	@echo "✅ Ready to commit!"

# Clean up artifacts
clean:
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .ruff_cache
	rm -rf .coverage
	rm -rf htmlcov
	rm -rf dist
	rm -rf build
	rm -rf *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

# Run API locally
run-api:
	uv run uvicorn aerofraud.serving.api:app --reload --host 0.0.0.0 --port 8000

# Run MLflow UI
run-mlflow:
	uv run mlflow ui --backend-store-uri sqlite:///mlflow.db

# Docker commands
docker-build:
	docker build -t aerofraud:latest .

docker-run:
	docker run -p 8000:8000 aerofraud:latest

docker-test:
	docker run aerofraud:latest make test

# Model training command
train:
	uv run python -m aerofraud.models.train

train-dev:
	uv run python -m aerofraud.models.train --config config/dev.yaml

# Coverage Report shortcut
coverage:
	uv run pytest
	@echo "Opening coverage report..."
	open htmlcov/index.html  # macOS
	# Or: xdg-open htmlcov/index.html  # Linux
