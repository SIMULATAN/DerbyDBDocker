#!/bin/bash
source ./set-local-env.sh
export SHELL=/bin/sh
sh ./derbydb-create.sh
sh ./derbydb-start.sh
