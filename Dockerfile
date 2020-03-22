FROM node:latest AS build

ENV NODE_ENV=production

WORKDIR /app
COPY . /app

RUN npm install

RUN npx sapper export


FROM caddy/caddy:latest

WORKDIR /app

COPY --from=build /app/Caddyfile /etc/caddy/Caddyfile
COPY --from=build /app/dev.Caddyfile /etc/caddy/dev.Caddyfile
COPY --from=build /app/__sapper__/export/ .