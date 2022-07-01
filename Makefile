default: lib/ST-4.0.8.jar requirements

lib/ST-4.0.8.jar: lib/%.jar:
	curl -L https://github.com/antlr/website-st4/raw/gh-pages/download/$*.jar >$@

venv:
	python -m venv venv && venv/bin/pip install --upgrade pip

venv/bin/pip-compile: venv
	venv/bin/pip install pip-tools

requirements.txt: requirements.in venv/bin/pip-compile
	venv/bin/pip-compile $<

requirements: requirements.txt
	venv/bin/pip install -r requirements.txt
