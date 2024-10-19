# syntax=docker/dockerfile:1

FROM node:20-alpine
WORKDIR /app
COPY yarn.lock package.json ./
RUN yarn install --frozen-lockfile
COPY ./src ./src
CMD ["yarn", "start"]
