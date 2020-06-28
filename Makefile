default: lib/ST-4.0.8.jar

lib/ST-4.0.8.jar: lib/%.jar:
	curl -L https://github.com/antlr/website-st4/raw/gh-pages/download/$*.jar >$@
