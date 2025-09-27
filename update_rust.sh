#!/bin/sh

rustup self update
rustup update

rustup component add clippy
rustup component add rust-analyzer rust-analysis rust-docs rust-src
rustup component add rustfmt
