#!/bin/bash

docker build --rm -t quay.io/workato/sentry-nginx:latest nginx
docker push quay.io/workato/sentry-nginx:latest

