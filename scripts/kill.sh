#!/bin/sh

kill $(pgrep monerod) $(pgrep p2pool) $(pgrep xmrig)
