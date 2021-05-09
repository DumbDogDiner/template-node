# template-node

NodeJS template using TypeScript, with Prettier and ESLint built in.

## Build Support

By default, this template supports being built as a standard TypeScript project, and as a Docker image.

### Building with TypeScript

By default, yarn build runs ESLint and then compiles the TypeScript source.

```sh
$ yarn build
yarn run v1.22.10
$ eslint src/**/*.* && tsc -b
Done in 2.03s.
```

### Building with Docker

You can build an image of this project using the following command:

```sh
docker build . --tag dumbdogdiner/template-node:latest
```

Be sure to change the **tag** of the image from `dumbdogdiner/template-node:latest` to something matching your project's name.

```sh
$ docker build . --tag dumbdogdiner/template-node:latest
Sending build context to Docker daemon  590.3kB
Step 1/13 : FROM node:16-alpine as builder
 ---> 50389f7769d0
Step 2/13 : WORKDIR /app/build
 ---> Using cache
 ---> 86e338943946
Step 3/13 : COPY package.json .
 ---> Using cache
 ---> ea58c5555043
Step 4/13 : RUN yarn
# ...
# ...
# ...
Step 12/13 : ENV NODE_ENV=production
 ---> Running in 33ceb9d4557a
Removing intermediate container 33ceb9d4557a
 ---> c77b3980a115
Step 13/13 : CMD ["yarn", "prod"]
 ---> Running in e547fb2b1a51
Removing intermediate container e547fb2b1a51
 ---> 109572cf9b40
Successfully built 109572cf9b40
Successfully tagged dumbdogdiner/template-node:latest
```

## Testing

This repository includes boilerplate testing support using the [Jest](htthttps://jestjs.io/) testing framework. Unit tests are written in the `src` folder, labelled as `name.test.ts` files, whereas integration tests should be placed in the `tests` folder.

### Unit tests vs Integration tests?

A **unit test** tests a particular piece of code, such as a function or class. This is in contrast to an **integration test**, which tests many components of a library at once.

### Example Test

An example test is shown below - this test was taken directly from [index.test.ts](./src/index.test.ts). I've listed below what each function does.

- `describe` - Describe declares a new testing section, labelled with the first argument (e.g. `describe("skye's yiff toy", () => /* ... */)`)
- `it` - Declares a new test, along with a description of what it should do (e.g. `it("should yiff skye", () => /* ... */)`)

```ts
import { myFunction } from "./";

describe("my function test", () => {
	it("should do a cool thing", () => {
		expect(myFunction(1, 2)).toEqual(2);
		expect(myFunction(2, 3)).toEqual(4);
	});
});
```

## Scripts

This repository comes with a number of utility scripts for stripping it of unwanted features. You can read up on them [here](./scripts/README.md).

## Pre-commit Hooks

This project uses [husky](https://www.npmjs.com/package/husky) to make use of [Git Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks). By default, a pre-commit hook is included that runs the command:

```sh
yarn lint && yarn test
```

You can add more commit hooks using the husky npx command:

```sh
npx husky add .husky/pre-commit "your command here"
```

Husky's documentation can be found [here](https://typicode.github.io/husky/#/).
