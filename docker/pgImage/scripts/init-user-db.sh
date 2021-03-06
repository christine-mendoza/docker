#!/bin/bash
set -e

export PGPASSWORD=`cat /run/secrets/postgres_passwd`
export IG_PASSWORD=`cat /run/secrets/ig_password`
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
        CREATE USER image_gallery;
        CREATE DATABASE image_gallery;
        GRANT ALL PRIVILEGES ON DATABASE image_gallery TO image_gallery;
        ALTER USER image_gallery WITH PASSWORD '$IG_PASSWORD';
EOSQL
