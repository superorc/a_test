#!/bin/bash

set -e

./cleanup.sh

docker-compose up --build
