#!/bin/bash

# client_encoding: 'UTF8'
bash -c "client_encoding: 'UTF8'" >> /etc/postgresql/9.6/main/postgresql.conf

# default_transaction_isolation: 'read committed'
bash -c "default_transaction_isolation: 'read committed'" >> /etc/postgresql/9.6/main/postgresql.conf

# timezone: 'UTC' when USE_TZ is True, value of TIME_ZONE otherwise
bash -c "timezone: 'UTC'" >> /etc/postgresql/9.6/main/postgresql.conf

# create user USR with password 'PWD';
bash -c "psql -c \"CREATE USER frepple WITH PASSWORD 'frepple';\""
