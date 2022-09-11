.PHONY: run
run:
	@echo "-=[ Building and Running the service ]=-"
	docker-compose --file docker-compose.yaml up --build -d
	@echo "-=[ Service running.. ]=-"

.PHONY: stop
stop:
	@echo "-=[ Stopping the service ]=-"
	@docker-compose --file docker-compose.yaml down
	@echo "-=[ Service Stopped ]=-"
