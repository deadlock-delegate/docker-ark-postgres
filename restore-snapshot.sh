#!/bin/sh
set -e

# create db and user
createdb -U postgres ark_mainnet
psql -U postgres -d ark_mainnet -c "update pg_database set encoding = 6, datcollate = 'en_US.UTF8', datctype = 'en_US.UTF8' where datname = 'template0';"
psql -U postgres -d ark_mainnet -c "update pg_database set encoding = 6, datcollate = 'en_US.UTF8', datctype = 'en_US.UTF8' where datname = 'template1';"
psql -U postgres -d ark_mainnet -c "CREATE USER ark WITH PASSWORD 'password' CREATEDB;"
