#!/bin/bash

set -e

REMOTE_USER=mylendad
REMOTE_HOST=10.0.2.15
REMOTE_DIR=/usr/local/bin

LOCAL_DIR=src/build/*

scp $LOCAL_DIR ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_DIR}

echo "DEPLOY:SUCCES!"