ENV_FILE=.env
ENV_LOCAL_FILE=.env.local

ifneq ("$(wildcard .env)","")
	include .env
	export $(shell sed 's/=.*//' .env)
endif

ifneq ("$(wildcard .env.local)","")
	include .env.local
	export $(shell sed 's/=.*//' .env.local)
endif

runpostgres:
	docker pull ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_IMAGE)
	@if [ -z "$$(docker network ls --filter name=^$(POSTGRES_NETWORK_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create network $(POSTGRES_NETWORK_NAME)"; \
		docker network create $(POSTGRES_NETWORK_NAME); \
	else \
		echo "Network $(POSTGRES_NETWORK_NAME) already exists"; \
	fi
	@if [ -z "$$(docker volume ls --filter name=^$(POSTGRES_VOLUME_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create volume $(POSTGRES_VOLUME_NAME)"; \
		docker volume create $(POSTGRES_VOLUME_NAME); \
	else \
		echo "Volume $(POSTGRES_VOLUME_NAME) already exists"; \
	fi
	docker run -d \
		--name $(POSTGRES_HOST) \
		--restart always \
		--env-file $(ENV_FILE) \
		--env-file $(ENV_LOCAL_FILE) \
		--network $(POSTGRES_NETWORK_NAME) \
		-p $(POSTGRES_EXT_PORT):$(POSTGRES_INT_PORT) \
		-v $(POSTGRES_VOLUME_NAME):/var/lib/postgresql/data \
		ghcr.io/$(GHCR_LOCATION)/$(POSTGRES_IMAGE)

runpgadmin:
	@if [ -z "$$(docker network ls --filter name=^$(POSTGRES_NETWORK_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create network $(POSTGRES_NETWORK_NAME)"; \
		docker network create $(POSTGRES_NETWORK_NAME); \
	else \
		echo "Network $(POSTGRES_NETWORK_NAME) already exists"; \
	fi
	docker run -d \
		--name $(PGADMIN_HOST) \
		--restart unless-stopped \
		-e PGADMIN_DEFAULT_EMAIL=$(PGADMIN_DEFAULT_EMAIL)\
		-e PGADMIN_DEFAULT_PASSWORD='$(PGADMIN_DEFAULT_PASSWORD)' \
		-e SCRIPT_NAME=$(SCRIPT_NAME) \
		--network $(POSTGRES_NETWORK_NAME) \
		-p $(PGADMIN_EXT_PORT):80 \
		dpage/pgadmin4


runconnector:
	docker pull ghcr.io/$(GHCR_LOCATION)/$(MQTT_CONNECTOR_IMAGE)
	@if [ -z "$$(docker network ls --filter name=^$(POSTGRES_NETWORK_NAME)$$ --format '{{.Name}}')" ]; then \
		echo "Create network $(POSTGRES_NETWORK_NAME)"; \
		docker network create $(POSTGRES_NETWORK_NAME); \
	else \
		echo "Network $(POSTGRES_NETWORK_NAME) already exists"; \
	fi
	docker run -d \
		--name $(MQTT_CONNECTOR_HOST) \
		--restart always \
		-e POSTGRES_HOST=$(POSTGRES_HOST) \
		-e POSTGRES_PORT=$(POSTGRES_INT_PORT) \
		-e POSTGRES_USER=$(POSTGRES_USER) \
		-e POSTGRES_PASSWORD='$(POSTGRES_PASSWORD)' \
		-e POSTGRES_DB_RECORDED=$(POSTGRES_DB_RECORDED) \
		-e MQTT_BROKER_HOST=$(MQTT_BROKER_HOST) \
		-e MQTT_BROKER_PORT=$(MQTT_BROKER_PORT) \
		-e MQTT_BROKER_TOPIC='$(MQTT_BROKER_TOPIC)' \
		-e CLIENT_ID=$(CLIENT_ID) \
		--network $(POSTGRES_NETWORK_NAME) \
		ghcr.io/$(GHCR_LOCATION)/$(MQTT_CONNECTOR_IMAGE)