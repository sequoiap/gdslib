
install:
	pip install -r requirements.txt --upgrade
	pip install -e .
	pip install pre-commit
	pre-commit install

lint:
	flake8

test:
	pytest

test-force:
	echo 'Regenerating component metadata for regression test. Make sure there are not any unwanted regressions because this will overwrite them'
	pytest --force-regen
