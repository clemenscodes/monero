#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

sudo xmrig \
    -o 127.0.0.1:3333 \
    -c "$root_dir/config/xmrig.json" \
    -l "$root_dir/logs/xmrig.log" \
    --randomx-1gb-pages \
    --http-host 127.0.0.1 \
    --http-port 3334 \
    -B
