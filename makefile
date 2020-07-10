

ensure-dependencies:
	@echo "Ensuring docker is installed..."
	@docker info
	@docker-compose version

brand:
	@echo "Creating our service-systemic-showcase manifest file..."
	@node_modules/make-manifest/bin/make-manifest
	@cat ./manifest.json

package:
	@echo "Building our service-systemic-showcase docker image..."
	@docker build --tag service-systemic-showcase .
	@docker images

qa:
	@echo "Checking that our service-systemic-showcase tests dont fail..."
	@npm run qa