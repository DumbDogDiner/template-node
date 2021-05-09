#!/bin/bash
set -euxo pipefail
# remove all docker-related files
rm .dockerignore Dockerfile .github/workflows/build_docker.yml
