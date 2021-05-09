# build image
FROM node:16-alpine as builder
# set workdir
WORKDIR /app/build
# copy package info and install deps
COPY package.json .
RUN yarn
# copy source code
COPY . .
# set environment - define here to prevent yarn from installing prod
RUN yarn build

# worker image
FROM node:16-alpine
# set workdir
WORKDIR /app/
# copy package info and install deps
COPY package.json .
RUN yarn --prod
# copy compiled code
COPY --from=builder /app/build/dist dist/
# run 
ENV NODE_ENV=production
CMD ["yarn", "prod"]
