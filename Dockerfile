FROM alpine:3.17

RUN apk update
RUN apk add --no-cache tini && \
    rm -f /var/cache/apk/*

ARG ARCH
ADD ./theta-node/target/${ARCH}-unknown-linux-musl/release/theta-node /usr/local/bin/theta-node
RUN chmod +x /usr/local/bin/theta-node
ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
