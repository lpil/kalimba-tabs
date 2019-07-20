help:
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

serve: ## Run the dev server
	./node_modules/.bin/elm-live src/Main.elm --path-to-elm=./node_modules/.bin/elm --port=3000
