# Monero P2Pool

Scripts and docker files to start mining monero quickly

## Setup

Install monerod, p2pool, xmrig

### Arch Linux

```sh
pacman -S monero p2pool xmrig
```

## Mining

Sync the monero node first

```sh
git clone https://github.com/clemenscodes/monero.git
cd monero
./scripts/monero.sh
```

After syncing, just run

```sh
./scripts/start.sh
```

Make sure to change the wallet address.
