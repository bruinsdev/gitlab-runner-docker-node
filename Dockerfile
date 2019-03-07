FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && apk add docker yarn py-pip \
    && pip install docker-compose
