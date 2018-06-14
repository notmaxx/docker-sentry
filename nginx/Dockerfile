FROM nginx:alpine

COPY sentry.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /tmp/entrypoint.sh

CMD ["/tmp/entrypoint.sh"]
