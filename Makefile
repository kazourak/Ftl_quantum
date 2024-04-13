run: /venv/bin/activate
	. venv/bin/activate; python3 main.py

/venv/bin/activate: requirements.txt
	test -d venv || python3 -m venv venv
	. venv/bin/activate; pip install -r requirements.txt
	touch venv/bin/activate

clear:
	rm -rf venv

.PHONY: clear run