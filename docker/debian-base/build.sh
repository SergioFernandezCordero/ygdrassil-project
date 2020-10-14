#!/usr/bin/env bash
#
docker build --pull --no-cache -t elautoestopista/ygdrassil-debian:testing . && docker push elautoestopista/ygdrassil-debian:testing
