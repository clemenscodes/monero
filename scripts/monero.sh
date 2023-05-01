#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

monerod \
    --data-dir="$root_dir/data" \
    --log-file="$root_dir/logs/monerod.log" \
    --confirm-external-bind \
    --p2p-bind-ip=127.0.0.1 \
    --p2p-bind-port=18080 \
    --rpc-bind-ip=127.0.0.1 \
    --rpc-bind-port=18081 \
    --detach
