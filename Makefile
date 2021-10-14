.PHONY: install
install:
	cargo install --force --path .



.PHONY: clear
clear:
	rm -rf target

.PHONY: test
test:
	cargo test

.PHONY: build
build:
	cargo build

.PHONY: build-dev
build-dev:
	cargo build --bin amake-dev

.PHONY: release
release: clear
	cargo build --release

.PHONY: dev
dev:
	./target/debug/amake-dev --dev --ws-external

# -------------------------------------cargo-------------------------------------

.PHONY: meta
meta:
	cargo metadata --verbose --format-version 1 --all-features

