FROM node:current-alpine

RUN apk update \
    && apk upgrade \
    && apk add docker py-pip \
    && pip install docker-compose \
    && apk del py-pip \
    && rm -rf /root/.cache
