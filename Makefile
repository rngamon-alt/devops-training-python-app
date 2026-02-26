#ONESHELL:
#ENV_PREFIX=$(shell python -c "if __import__('pathlib').Path('.venv/bin/pip').exists(): print('.venv/bin/')")

.PHONY: help
help:             ## Show the help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep



.PHONY: lint
reformat:             ## Run pep8, black, mypy linters.
	black  --pyi -l 79 -t py311 src/
	black  --pyi -l 79 -t py311 tests/
	black  --ipynb -l 79 -t py311 lab/

lint:             ## Run pep8, black, mypy linters.
	flake8 src/
	black --pyi -l 79 -t py311 --check src/
	black --pyi -l 79 -t py311 --check tests/
	black --ipynb -l 79 -t py311 --check lab/
	mypy --ignore-missing-imports src/

.PHONY: test
test: lint        ## Run tests and generate coverage report.
	coverage run -m pytest -v  -l --tb=short --maxfail=1 tests/
	coverage xml
	coverage html 

