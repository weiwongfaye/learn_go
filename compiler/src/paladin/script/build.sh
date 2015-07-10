#!/bin/bash
set -e

if [ -z "$1" ]; then
    OS_PLATFORM_ARG=(-os="darwin linux windows")
else
    OS_PLATFORM_ARG=($1)
fi

if [ -z "$2" ]; then
    OS_ARCH_ARG=(-arch="386 amd64")
else
    OS_ARCH_ARG=($2)
fi

rm -f paladin_*
docker build -t paladin:latest .
docker run --rm -v `pwd`:/go/src/github.com/markshao/paladin paladin gox "${OS_PLATFORM_ARG[@]}" "${OS_ARCH_ARG[@]}" -output="paladin_{{.OS}}-{{.Arch}}"
docker rmi paladin
