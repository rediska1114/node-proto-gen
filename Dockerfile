FROM node:alpine

RUN apk add --update --no-cache python2 && ln -sf python2 /usr/bin/python \
    && python2 -m ensurepip \
    && pip2 install --no-cache --upgrade pip setuptools \
    && apk add --no-cache tar make g++

RUN npm -g grpc grpc_tools_node_protoc_ts grpc-tools