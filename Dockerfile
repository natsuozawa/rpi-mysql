ARG MYSQL_ROOT_PASSWORD=root
FROM biarms/mysql:5.7

COPY ./config /etc/mysql/conf.d
COPY ./scripts /etc/mysql/scripts
COPY ./scripts/init /docker-entrypoint-initdb.d
RUN chmod +x -R /etc/mysql/conf.d
RUN chmod +x -R /etc/mysql/scripts
RUN chmod +x -R /docker-entrypoint-initdb.d
