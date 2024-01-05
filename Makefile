DCK_COMPOSE_CMD = sudo docker-compose -f ./srcs/docker-compose.yml

all:
	${DCK_COMPOSE_CMD} up -d --build

down:
	${DCK_COMPOSE_CMD} down -v

fclean: down
	sudo docker rmi -f $$(sudo docker images -q)

.PHONY: all down fclean