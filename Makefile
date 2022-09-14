.PHONY: run
run:
	@echo "-=[ Building and Running the service ]=-"
	@echo "-=[ Using Docker Compose V2 ]=-"
	docker-compose --file docker-compose.yaml up --build -d
	@echo "-=[ Service is running.. ]=-"

.PHONY: run-v3
run-v3:
	@echo "-=[ Building and Running the service ]=-"
	@echo "-=[ Using Docker Compose V3.7 ]=-"
	docker-compose --file docker-compose_v3.yaml up --build -d
	@echo "-=[ Service is running.. ]=-"

.PHONY: stop
stop:
	@echo "-=[ Stopping the service ]=-"
	@docker-compose --file docker-compose.yaml down
	@echo "-=[ Service Stopped ]=-"

.PHONY: stop-v3
stop-v3:
	@echo "-=[ Stopping the service ]=-"
	@docker-compose --file docker-compose_v3.yaml down
	@echo "-=[ Service Stopped ]=-"

.PHONY: ps
ps:
	@docker-compose ps

.PHONY: logs-instance
logs-instance:
	@docker-compose logs ${name}

.PHONY: exec
exec:
	@docker-compose exec ${name} /bin/bash
