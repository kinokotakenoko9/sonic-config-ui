.ONESHELL:
SHELL = /bin/bash
.SHELLFLAGS += -e

VERSION=1.0.0

all:
	DOCKER_BUILDKIT=1 docker build \
		--build-arg \
			manifest="manifest.json" \
		. -t sonic-config-ui:$(VERSION)