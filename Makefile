.PHONY: dc_build
dc_build:
	@echo "Building..."
	@docker compose build

.PHONY: dc_up
dc_up:
	@echo "Starting..."
	@docker compose up -d

.PHONY: dc_down
dc_down:
	@echo "Stopping..."
	@docker compose down

.PHONY: web_bash
web_bash:
	@docker compose exec web bash
	