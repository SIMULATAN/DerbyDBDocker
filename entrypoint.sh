#!/bin/bash

cd /

[ ! -d /files ] && mkdir files || true

cp -r /app/* /files

cd /files

source ./set-local-env.sh
export SHELL=/bin/sh
sh ./derbydb-create.sh
sh ./derbydb-start.sh
