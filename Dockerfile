FROM alpine

WORKDIR /home
RUN apk add --no-cache \
	wget \
	php

USER nobody
