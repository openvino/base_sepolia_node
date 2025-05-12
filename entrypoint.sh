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
  --authrpc.jwtsecret /jwt/jwt.hex \
  --bootnodes=enode://debd3b2a9c7cd01f749123bf7a212428a56d29d640bed8c20ebbff554e43b03540f4b8c31bfeaa6ded809759840c66d34b47aab2dc93b92b2f198a083f776f88@167.99.127.208:30303
