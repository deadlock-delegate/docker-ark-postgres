FROM postgres:9.6

RUN apt-get update && apt-get install -y --no-install-recommends build-essential ca-certificates wget

COPY restore-snapshot.sh /docker-entrypoint-initdb.d/restore-snapshot.sh
COPY Makefile Makefile
