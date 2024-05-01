.PHONY: install
install:
	poetry install

.PHONY: fix
fix:
	poetry run black .
	poetry run isort .

.PHONY: lint
lint:
	poetry run black --check .
	poetry run isort --check .
	poetry run flake8 .
	poetry run pylint posts
	poetry run mypy .
