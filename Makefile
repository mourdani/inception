DOCKER_COMPOSE = srcs/docker-compose.yml
	
NAME: $(DOCKER_COMPOSE)
	docker-compose -f $(DOCKER_COMPOSE) up -d

all:	$(NAME)

cnginx:
	docker stop nginx; docker rm nginx; docker rmi -f srcs_nginx;

cwp:
	docker stop wordpress; docker rm wordpress; docker rmi -f srcs_wordpress
cdb:
	docker stop mariadb; docker rm mariadb; docker rmi -f srcs_mariadb

re: clean all
