# template-node/scripts

A collection of scripts to aid in stripping unwanted features from this repository.

## [removeDocker](./removeDocker.sh)

This script removes all files related to Docker, including the Dockerfile and GHA workflow for building the docker image.

The script file is shown below so you can better understand what it does.

```bash
#!/bin/bash
set -euxo pipefail
# change directory to root git repo
cd $(git rev-parse --show-toplevel)
# remove all docker-related files
rm .dockerignore Dockerfile .github/workflows/build-docker.yml
```

## [removeJest](./removeJest.sh)

This script removes all files related to Jest, including the Jest configuration and NPM packages. **Please be advised:** This will also remove all files labelled with an extension that matches `*.test.*`.

The script file is shown below so you can better understand what it does.

```bash
#!/bin/bash
set -euxo pipefail
# change directory to root git repo
cd $(git rev-parse --show-toplevel)
# uninstall jest
yarn remove jest ts-jest @types/jest
# remove all test files
rm jest.config.js .github/workflows/test.yml src/**/*.test.*
```
