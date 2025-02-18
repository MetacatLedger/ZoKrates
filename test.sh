#!/bin/bash

# Exit if any subcommand fails
set -e

if [ -n "$WITH_LIBSNARK" ]; then
	cargo test --release --package zokrates_cli --features="libsnark"
else
	cargo test --release
fi
