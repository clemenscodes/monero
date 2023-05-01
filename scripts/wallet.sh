#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

monero-wallet-cli \
    --daemon-host 127.0.0.1 \
    --log-file="$root_dir/logs/wallet.log"
