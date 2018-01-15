#/usr/bin/env bash
docker run --name rajd_postgres -p 5432:5432 -e POSTGRES_USER=rajd -e POSTGRES_PASSWORD=rajd -d postgres:9-alpine
