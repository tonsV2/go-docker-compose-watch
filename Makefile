start:
	@echo "Starting app..."
	@docker compose up app --build -d

stop:
	@echo "Stopping app..."
	@docker compose down

watch: start
	@echo "Watching for file changes..."
	@docker compose watch app

logs: 
	@docker compose logs -f
