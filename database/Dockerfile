FROM mysql:5.7
ADD schema.sql /docker-entrypoint-initdb.d/schema.sql
RUN ls /var/lib/mysql