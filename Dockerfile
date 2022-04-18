FROM debian:bullseye

WORKDIR /home/web
RUN apt update  && apt install -y \
	wget \
	php

COPY ngrok /usr/local/bin
