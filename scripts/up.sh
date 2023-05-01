#!/bin/sh

script_path="$(realpath "$0")"
script_dir="$(dirname "$script_path")"
root_dir="$(dirname "$script_dir")"

docker compose -f "$root_dir/docker/docker-compose-yml" up
