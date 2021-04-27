# sytax=docker/dockerfile:1
FROM node:14.16.1-buster-slim
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]