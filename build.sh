#!/bin/bash

VERSION="0.1.2"

docker buildx create --name my
docker buildx use my
#docker buildx inspect --bootstrap

docker buildx build --build-arg VERSION=${VERSION} --platform linux/amd64,linux/arm64,linux/arm/v7 -t contentar/shift-code:latest -t contentar/shift-code:${VERSION}  --push .