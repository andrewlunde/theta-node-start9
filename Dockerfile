FROM alpine:3.17

RUN apk update
RUN apk add --no-cache tini && \
    rm -f /var/cache/apk/*

ARG ARCH
ADD ./theta-edgenode/target/${ARCH}-unknown-linux-musl/release/theta-edgenode /usr/local/bin/theta-edgenode
RUN chmod +x /usr/local/bin/theta-edgenode
ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
