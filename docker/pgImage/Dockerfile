FROM postgres:13

ENV POSTGRES_PASSWORD_FILE=/run/secrets/postgres_passwd
ENV PGDATA=/var/lib/postgresql/data/pgdata

RUN apt-get update && apt-get install -y \
    dnsutils \
    nano

COPY ./scripts/init-user-db.sh /docker-entrypoint-initdb.d/
