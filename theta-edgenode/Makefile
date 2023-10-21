THETA_EDGENODE_SRC := $(shell find ./src) Cargo.toml Cargo.lock

theta-edgenode/target/aarch64-unknown-linux-musl/release/theta-edgenode: $(THETA_EDGENODE_SRC)
	docker run --rm -it -v ~/.cargo/registry:/root/.cargo/registry -v "$(shell pwd)":/home/rust/src messense/rust-musl-cross:aarch64-musl cargo build --release