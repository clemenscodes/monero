#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

p2pool \
    --host 127.0.0.1 \
    --wallet 49j7AMxXgkBVioejSyBkxBXQSfDDVB9U71vqimeaLrDRBeaK5jc3NH5RNBHTgKSofeGWuCqRRUZTDbRcctVswNXEKSwszEN \
    --data-api "$root_dir/data/p2pool" \
    --local-api \
    --loglevel 3 \
    --mini
