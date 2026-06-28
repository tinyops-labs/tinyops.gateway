FROM nginx:alpine

RUN apk add --no-cache certbot

RUN echo '0 3 * * * certbot renew --quiet --webroot -w /usr/share/nginx/html --deploy-hook "nginx -s reload"' > /etc/crontabs/root

CMD crond -b && nginx -g "daemon off;"
