#!/bin/sh
set -e
docker build -t paladin .
exec docker run --rm paladin go test -v -short ./...
