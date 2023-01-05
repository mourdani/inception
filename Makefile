DOCKER_COMPOSE = srcs/docker-compose.yml
	
NAME: $(DOCKER_COMPOSE)
	docker-compose -f $(DOCKER_COMPOSE) up -d

all:	$(NAME)

cngnix:
	docker stop nginx; docker rm nginx; docker rmi -f srcs-nginx;

cwp:
	docker stop wordpress; docker rm wordpress; docker rmi srcs-wordpress

re: clean all
