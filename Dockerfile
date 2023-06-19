FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=cse_tutors
COPY ./db/create.sql /docker-entrypoint-initdb.d/
COPY ./db/populate.sql /docker-entrypoint-initdb.d/
EXPOSE 3306