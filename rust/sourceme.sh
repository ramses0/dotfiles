#!/bin/sh
which rustc > /dev/null || { curl -sSf https://static.rust-lang.org/rustup.sh | sh }
