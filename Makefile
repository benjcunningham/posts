.phony: fix
fix:
	poetry run black .
	poetry run isort .

.phony: lint
lint:
	poetry run black --check .
	poetry run isort --check .
	poetry run flake8 **/*.py
	poetry run pylint posts
