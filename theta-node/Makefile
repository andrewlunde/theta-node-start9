THETA_NODE_SRC := $(shell find ./src) Cargo.toml Cargo.lock

theta-node/target/aarch64-unknown-linux-musl/release/theta-node: $(THETA_NODE_SRC)
	docker run --rm -it -v ~/.cargo/registry:/root/.cargo/registry -v "$(shell pwd)":/home/rust/src messense/rust-musl-cross:aarch64-musl cargo build --release