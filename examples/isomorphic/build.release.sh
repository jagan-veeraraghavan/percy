#!/bin/bash

cd $(dirname $0)

cd ./client

./build-wasm.prod.sh
cargo +nightly build -p isomorphic-server --release --target x86_64-unknown-linux-musl
