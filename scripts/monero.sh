#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

monerod \
    --data-dir="$root_dir/data" \
    --log-file="$root_dir/logs/monerod.log" \
    --detach
