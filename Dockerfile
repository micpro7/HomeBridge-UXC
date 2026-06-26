FROM alpine:3.20

# install runtime deps
RUN apk add --no-cache \
    nodejs \
    npm \
    bash \
    python3 \
    make \
    g++ \
    git

# install homebridge
RUN npm install -g --unsafe-perm \
    homebridge \
    homebridge-config-ui-x

# create persistent dirs
RUN mkdir -p /homebridge

WORKDIR /homebridge

EXPOSE 8581

CMD ["homebridge"]
