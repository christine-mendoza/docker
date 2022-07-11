#! /bin/bash
export PGPASSWORD=`cat /run/secrets/ig_password`
psql -h $PG_HOST -U $IG_USER -c \
"create table users(username varchar(100) not null primary key, password varchar(100), full_name varchar(200)); \
create table images(id serial primary key, username varchar(100), image varchar(500)); \
insert into users values('augrader', 'cpsc4973', 'grader');"
