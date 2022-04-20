default: lib/ST-4.0.8.jar

lib/ST-4.0.8.jar: lib/%.jar:
	curl -L https://github.com/antlr/website-st4/raw/gh-pages/download/$*.jar >$@

venv:
	python -m venv venv && venv/bin/pip install --upgrade pip && venv/bin/pip install -r manual-requirements.txt
