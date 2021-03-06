up: volumes
		@docker-compose -f ./srcs/docker-compose.yml up -d

build: volumes
		@docker-compose -f ./srcs/docker-compose.yml build

down:
		@docker-compose -f ./srcs/docker-compose.yml down

stop:
		@docker-compose -f ./srcs/docker-compose.yml stop

restart: stop up

prune:
	@docker system prune -a

destroy:
	@docker system prune -a --volumes

live:
	@docker ps
	@docker images

logs:
	@docker-compose -f ./srcs/docker-compose.yml logs -f -t --tail="all"

volumes:
	@mkdir -p ~/data/db_data
	@mkdir -p ~/data/wp_data