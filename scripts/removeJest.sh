#!/bin/bash
set -euxo pipefail
# uninstall jest
yarn remove jest ts-jest @types/jest
# remove all test files
rm jest.config.js test.yml src/**/*.test.*
