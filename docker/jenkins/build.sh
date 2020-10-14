#!/usr/bin/env bash
#
docker build --pull --no-cache -t elautoestopista/jenkins . && docker push elautoestopista/jenkins:latest
