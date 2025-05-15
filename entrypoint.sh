#!/bin/bash

# Reth entrypoint script for Base Sepolia DAppNode package

exec reth node \
  --config /data/reth.toml \
  --datadir /data \
  --chain /base-sepolia.json \
  --authrpc.jwtsecret /jwt/jwt.hex
