FROM debian:buster

# MaJ et instalation mariaDB
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y mariadb-server

# Copie des fichiers de configuration et du script
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /usr/local/bin/script.sh

RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf && \
    chmod +x /usr/local/bin/script.sh

EXPOSE 3306

CMD ["/usr/local/bin/script.sh"]

