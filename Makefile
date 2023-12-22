install:
	pipenv install --dev
	pipenv run pre-commit install

install_ci:
	pipenv sync

test:
	# shellcheck scripts/*.sh
	pipenv run yamllint .
