FROM nginx:alpine

RUN apk add --no-cache certbot python3 py3-pip bash curl