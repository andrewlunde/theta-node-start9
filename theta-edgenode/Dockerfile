FROM arm64v8/alpine:latest

RUN apk update
RUN apk add tini

ADD ./target/aarch64-unknown-linux-musl/release/theta-edgenode /usr/local/bin/theta-edgenode

EXPOSE 8080

ENTRYPOINT tini theta-edgenode
