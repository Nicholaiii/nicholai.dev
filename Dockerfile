# Build stage
FROM node:13.12-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage
FROM abiosoft/caddy:no-stats as production
COPY --from=build /app/public /srv
COPY Caddyfile /etc
ENV ACME_AGREE="true"
EXPOSE 80 443

LABEL authors="Nicholai Nissen"