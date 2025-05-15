FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    jq \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*


# Copy entrypoint and base-sepolia chain config
COPY entrypoint.sh /entrypoint.sh
COPY op-reth /usr/local/bin/reth
COPY base-sepolia.json /base-sepolia.json
COPY data/reth.toml /data/reth.toml

# Make entrypoint executable
RUN chmod +x /entrypoint.sh

# These directories are provided via external Docker volumes
VOLUME ["/data", "/jwt"]

# Expose required ports
EXPOSE 8545 6060 30303 30303/udp

ENTRYPOINT ["/entrypoint.sh"]

