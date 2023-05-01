#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

cd "$root_dir/logs" || exit

"$script_dir/monero.sh" 
"$script_dir/miner.sh" 
"$script_dir/pool.sh" >"$root_dir/logs/p2pool.log" 2>&1 &
