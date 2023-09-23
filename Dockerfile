FROM mysql:8.0.31

ENV MYSQL_DATABASE adw

COPY ./scripts-para-contenedor/ /docker-entrypoint-initdb.d/