.PHONY: dc_build
dc_build:
	@echo "Building..."
	@docker compose build

.PHONY: dc_up
dc_up:
	@echo "Starting..."
	@docker compose up -d
	