.PHONY: test ci-test lint generate help run locale coverage

.DEFAULT_GOAL := help

help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

test: ## run tests
	flutter test --coverage

ci-test: ## run tests with CI environment flag
	flutter test --coverage --dart-define=CI=true

golden: ## update golden tests
	flutter test --update-goldens

lint: ## lint and autoformat this project
	flutter analyze
	flutter format --set-exit-if-changed .

run: ## run the app with hot reload
	flutter run --target lib/main.dart --pid-file=${FLUTTER_PID_FILE} -d macos

locale: ## generate locale files
	flutter gen-l10n

coverage: ## generate coverage report
	flutter test --coverage
	genhtml coverage/lcov.info -o coverage/html
	open coverage/html/index.html
