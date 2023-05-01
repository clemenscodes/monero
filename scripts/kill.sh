#!/bin/sh

sudo kill $(pgrep monerod) $(pgrep p2pool) $(pgrep xmrig)
