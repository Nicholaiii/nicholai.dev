# Build stage
FROM node:12 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production stage
FROM abiosoft/caddy:no-stats as production
COPY --from=build /usr/src/app/public /srv
COPY Caddyfile /etc
ENV ACME_AGREE="true"
EXPOSE 80
EXPOSE 443