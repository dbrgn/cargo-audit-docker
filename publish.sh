#!/bin/sh
set -eo pipefail

DOCKER_IMAGE=dbrgn/cargo-audit

docker build --no-cache . -t ${DOCKER_IMAGE}:latest
docker push ${DOCKER_IMAGE}
