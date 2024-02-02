.PHONY: site test

.venv:
	python3 -m venv .venv; . .venv/bin/activate;  pip install -r requirements.txt

site: .venv
	. .venv/bin/activate; make html -C docs

test: .venv
	. .venv/bin/activate; cd test; pytest -vv
