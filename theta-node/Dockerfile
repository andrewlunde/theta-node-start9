FROM arm64v8/alpine:latest

RUN apk update
RUN apk add tini

ADD ./target/aarch64-unknown-linux-musl/release/theta-node /usr/local/bin/theta-node

EXPOSE 8080

ENTRYPOINT tini theta-node
