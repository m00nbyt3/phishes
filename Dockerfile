FROM alpine

WORKDIR /home/web
RUN apk add --no-cache \
	wget \
	php

RUN adduser -D user42
RUN chmod 777 /home/web
RUN su user42