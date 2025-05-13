#!/bin/bash
exec reth node \
  --chain /base-sepolia.json \
  --http \
  --http.addr 0.0.0.0 \
  --http.port 8545 \
  --port 30303 \
  --metrics 0.0.0.0:6060 \
  --datadir /data \
  --authrpc.addr 0.0.0.0 \
  --authrpc.port 8551 \
  --authrpc.jwtsecret /jwt/jwt.hex 
