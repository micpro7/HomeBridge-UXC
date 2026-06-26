FROM alpine:3.20

RUN apk add --no-cache \
    nodejs \
    npm \
    bash \
    python3 \
    make \
    g++ \
    git

RUN npm install -g --unsafe-perm \
    homebridge \
    homebridge-config-ui-x

WORKDIR /homebridge

EXPOSE 8581

CMD ["homebridge"]