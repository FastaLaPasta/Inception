DCK_COMPOSE_CMD = sudo docker-compose -f ./srcs/docker-compose.yml

all:
	${DCK_COMPOSE_CMD} up -d --build

down:
	${DCK_COMPOSE_CMD} down -v

fclean: down
	sudo docker rmi -f $$(sudo docker images -q)
	sudo rm -rf /home/boulogne/data/wordpress && mkdir /home/boulogne/data/wordpress
	sudo rm -rf /home/boulogne/data/mariadb && mkdir /home/boulogne/data/mariadb

.PHONY: all down fclean