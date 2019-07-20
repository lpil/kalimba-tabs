help:
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

serve: ## Run the dev server
	./node_modules/.bin/elm-live src/Main.elm --path-to-elm=./node_modules/.bin/elm --port=3000

build: ## Compile app
	rm -rf tmp
	mkdir tmp
	./node_modules/.bin/elm make src/Main.elm --output=tmp/main.js --optimize
	./node_modules/.bin/uglifyjs tmp/main.js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | ./node_modules/.bin/uglifyjs --mangle --output=docs/main.js
	cp src/index.html docs/index.html
