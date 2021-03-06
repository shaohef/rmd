#!/usr/bin/env bash

BASE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
source $BASE/go-env

go get github.com/Masterminds/glide && glide install
go install github.com/intel/rmd && \
cp -r $BASE/../etc/rmd /etc

USER="rmd"
useradd $USER || echo "User rmd already exists."

LOGFILE="/var/log/rmd/rmd.log"
if [ ! -d ${LOGFILE%/*} ]; then
    mkdir -p ${LOGFILE%/*}
    chown $USER:$USER ${LOGFILE%/*}
fi

DBFILE="/var/run/rmd/rmd.db"
if [ ! -d ${DBFILE%/*} ]; then
    mkdir -p ${DBFILE%/*}
    chown $USER:$USER  ${DBFILE%/*}
fi

if [ "$1" == "--skip-pam-userdb" ]; then
    $BASE/setup_pam_files.sh $1
else
    $BASE/setup_pam_files.sh
fi

DATA="\"logfile\":\"$LOGFILE\", \"dbtransport\":\"$DBFILE\", \"logtostdout\":false"
go run $BASE/../cmd/gen_conf.go -path /etc/rmd/rmd.toml -data "{$DATA}"
