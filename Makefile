.DEFAULT_GOAL := install

install:
ifeq ($(CI),true)
	uv sync --frozen
else
	uv sync
	uv run pre-commit install
endif

test: test.lint

test.lint:
	uv run yamllint .
