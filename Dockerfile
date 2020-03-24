FROM node:latest AS build

WORKDIR /app
COPY . /app

RUN npm install

ENV NODE_ENV=production
RUN npm run build


FROM caddy/caddy:latest

WORKDIR /app

COPY ./Caddyfile /etc/caddy/Caddyfile
COPY ./dev.Caddyfile /etc/caddy/dev.Caddyfile
COPY --from=build /app/__sapper__/export/ .
