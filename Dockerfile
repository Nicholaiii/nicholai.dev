# Build stage
FROM node:13.12-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
ENV NODE_ENV=production
RUN npm run build

# Production stage
FROM abiosoft/caddy:no-stats as production-stage
COPY --from=build-stage /app/public /srv
COPY Caddyfile /etc
ENV ACME_AGREE="true"
EXPOSE 80 443

LABEL authors="Nicholai Nissen"