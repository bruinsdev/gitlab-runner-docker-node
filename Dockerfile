FROM node:current-alpine

RUN apk update \
    && apk upgrade \
    && apk add docker py-pip python make gcc g++ git \
    && pip install docker-compose \
    && apk del py-pip \
    && rm -rf /root/.cache
