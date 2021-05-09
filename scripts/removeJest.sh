#!/bin/bash
set -euxo pipefail
# change directory to root git repo
cd $(git rev-parse --show-toplevel)
# uninstall jest
yarn remove jest ts-jest @types/jest
# remove all test files
rm jest.config.js .github/workflows/test.yml src/**/*.test.*
