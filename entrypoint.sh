#!/bin/bash

# Reth entrypoint script for Base Sepolia DAppNode package

exec reth node \
  --config /data/reth.toml \
  --authrpc.jwtsecret /jwt/jwt.hex

