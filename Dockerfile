FROM postgres:alpine
COPY ./init.sql /docker-entrypoint-initdb.d/
COPY ./migrations/*.up.sql /docker-entrypoint-initdb.d/