DCK_COMPOSE_CMD = sudo docker-compose -f ./srcs/docker-compose.yml

all:
	${DCK_COMPOSE_CMD} up -d --build

down:
	${DCK_COMPOSE_CMD} down -v

fclean: down
	sudo docker rmi -f $$(sudo docker images -q)
	sudo rm -rf /home/sboulogne/data/wordpress && mkdir -p /home/sboulogne/data/wordpress
	sudo rm -rf /home/sboulogne/data/mariadb && mkdir -p /home/sboulogne/data/mariadb

.PHONY: all down fclean