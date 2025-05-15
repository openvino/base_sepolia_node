FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    jq \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Download and install the latest Reth binary from GitHub releases
RUN curl -L https://github.com/paradigmxyz/reth/releases/download/v1.3.12/reth-v1.3.12-x86_64-unknown-linux-gnu.tar.gz -o reth.tar.gz && \
    tar -xzf reth.tar.gz && \
    mv reth /usr/local/bin/reth && \
    chmod +x /usr/local/bin/reth && \
    rm -f reth.tar.gz


# Create data directory
RUN mkdir -p /data

# Copy base sepolia specs
COPY base-sepolia.json /base-sepolia.json

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

VOLUME ["/data"]
EXPOSE 8545 6060 30303 30303/udp

ENTRYPOINT ["/entrypoint.sh"]
