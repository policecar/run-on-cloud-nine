install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	python -m pytest -vv *.py

format:
	black *.py

run:
	python main.py

run-uvicorn:
	uvicorn main:app --reload

killweb:
	sudo killall uvicorn

lint:
	ruff check .

all: install test format lint