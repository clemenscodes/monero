#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

monerod \
    --data-dir="$root_dir/data" \
    --log-file="$root_dir/logs/monerod.log" \
    --zmq-pub tcp://127.0.0.1:18083 \
    --out-peers 64 \
    --in-peers 32 \
    --add-priority-node=node.supportxmr.com:18080 \
    --add-priority-node=nodes.hashvault.pro:18080 \
    --disable-dns-checkpoints \
    --enable-dns-blocklist \
    --detach
