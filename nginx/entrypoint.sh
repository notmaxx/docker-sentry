#!/bin/sh

echo "$SSL_CRT" > /etc/ssl/sentry.crt
echo "$SSL_KEY" > /etc/ssl/sentry.key
echo "$SSL_DHPARAM" > /etc/ssl/sentry_dhparam.pem

nginx -g "daemon off;"
