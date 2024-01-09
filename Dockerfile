# Build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
ENV NODE_ENV=production
RUN npm run build
RUN npm prune --production

# Production stage
FROM caddy as production-stage
COPY --from=build-stage /app/build /srv
COPY Caddyfile /etc/caddy
ENV ACME_AGREE="true"
EXPOSE 80 443

LABEL authors="Nicholai Nissen"
LABEL org.opencontainers.image.source="https://github.com/nicholaiii/nicholai.dev"
