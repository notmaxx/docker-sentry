#!/bin/bash

docker build --rm -t quay.io/workato/sentry:8.22 8.22
docker push quay.io/workato/sentry:8.22

docker build --rm -t quay.io/workato/sentry:8.22-onbuild 8.22/onbuild
docker push quay.io/workato/sentry:8.22-onbuild
