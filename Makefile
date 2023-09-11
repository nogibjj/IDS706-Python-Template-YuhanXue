install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=src --cov=src.lib tests/test_*.py

format:	
	black src/*.py tests/*.py

lint:
	pylint --disable=R,C src/*.py

		
all: install lint format test