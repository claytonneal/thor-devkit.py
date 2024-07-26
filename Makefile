install:
	python3 -m venv .env
	. .env/bin/activate && pip3 install -r requirements.txt

test:
	. .env/bin/activate && python3 -m pytest --cov=thor_devkit --no-cov-on-fail --cov-report=term-missing -vv -s

publish:
	rm -rf dist/*
	pipenv shell
	python setup.py sdist bdist_wheel
	python -m twine upload dist/*
