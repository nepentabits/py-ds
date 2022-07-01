venv:
	python3 -m venv venv
	./venv/bin/python -m pip install -r requirements.txt

venv-dev: venv
	./venv/bin/python -m pip install -r dev-requirements.txt

install-dev: venv-dev
	cd .. && ./py_ds/venv/bin/python -m pip install -e py_ds/

install: venv
	cd .. && ./py_ds/venv/bin/python -m pip install py_ds/

clean:
	rm -fr ./venv