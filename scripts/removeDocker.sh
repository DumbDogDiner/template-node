#!/bin/bash
set -euxo pipefail
# change directory to root git repo
cd $(git rev-parse --show-toplevel)
# remove all docker-related files
rm .dockerignore Dockerfile .github/workflows/build-docker.yml
