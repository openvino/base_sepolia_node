Here’s a detailed `README.md` for your **base-sepolia-node** repository. It provides an overview of the project, setup instructions, and relevant details.

````markdown
# Base Sepolia Node

This repository contains the setup and configuration for the **Base Sepolia Node**. It includes everything needed to run the **Base** layer on the **Sepolia Testnet**, integrated with **DAppNode** and the **OviSync zkSync custom chain**. The node utilizes the **OpenVinoDAO OVI token** as the base token for the custom chain, enabling efficient tokenized operations for wineries on the OpenVino platform.

## Features

- **Base Sepolia Node** setup with **Reth** (execution client) and **Prysm** (consensus client).
- **OviSync** zkSync custom chain with **OVI tokens** as the base token.
- Integrated with **DAppNode** for easy management and deployment.
- Full **node synchronization** with the **Sepolia Testnet**.
- **Decentralized infrastructure** using **Netrabrick** and winery-operated nodes.
- Supports **OpenVinoDAO governance** for winery tokenization and transparency services.

## Prerequisites

Before setting up the Base Sepolia Node, ensure you have the following:

- A **DAppNode** instance running and configured (for easy deployment and management).
- **Docker** and **Docker Compose** installed on the host machine.
- A **Base mainnet** account for token integration (you'll need this to interact with the OpenVinoDAO ecosystem).
- Basic understanding of **Ethereum** testnets (Sepolia), **zkSync**, and **OpenVinoDAO** infrastructure.

## Installation

### 1. Clone the Repository

Start by cloning the repository to your local machine.

```bash
git clone https://github.com/openvino/base-sepolia-node.git
cd base-sepolia-node
````

### 2. Configure Docker Compose

In the project root directory, you’ll find the `docker-compose.yml` file. This file defines the services required to run the Base Sepolia node. Here’s an overview of the important services:

* **reth**: Execution client running on Sepolia.
* **prysm**: Consensus client for Ethereum 2.0.
* **op-node**: Rollup node for Base Sepolia integration.
* **ov-node**: Custom zkSync chain node running OVI tokens as the base token.

To start these services, modify any necessary configuration values (such as volume paths, network settings, etc.) and then launch them using Docker Compose.

```bash
docker-compose up -d
```

### 3. Configuration Files

The following configuration files are essential for proper node setup:

* **.env**: This file contains sensitive environment variables like **JWT tokens** and endpoint URLs.
* **docker-compose.yml**: The main configuration for the node and its services.
* **network-config.json**: Contains the necessary **Sepolia network** settings for the node, including peer endpoints.

Make sure to configure the `.env` and other configuration files to match your network settings and environment.

### 4. Netrabrick Integration

To deploy **Netrabrick** nodes, follow these steps:

1. Set up the Netrabrick on the winery’s local server, which will include running an IPFS node, DNS server, and the **Base Sepolia execution client**.
2. Configure **OpenVinoDAO** integration by ensuring the **OVI token** is used for gas fees on the **OviSync zkSync chain**.
3. Ensure the winery’s **Netrabrick** is connected to the rest of the network and configured with the correct **zkSync** node for sensor data and wine traceability.

### 5. Running the Node

Once the configuration is complete, you can start the node by running:

```bash
docker-compose up
```

This will start the **Base Sepolia node** along with the **zkSync custom chain** (OviSync) using the **OVI token**.

To check the status of your running containers:

```bash
docker-compose ps
```

### 6. Syncing with Sepolia Testnet

Once your node is up and running, it will automatically begin syncing with the **Sepolia Testnet**. Monitor the sync status with:

```bash
docker logs -f reth
docker logs -f prysm
```

### 7. Accessing the DAppNode Dashboard

You can manage the Base Sepolia node via the **DAppNode dashboard**:

1. Access the dashboard at **`http://<dappnode-ip>:5000`**.
2. Find the **Base Sepolia Node** in the list of services.
3. Monitor and manage the services through the dashboard.

## Tokenomics and Crowdsale Integration

The **OVI token** is used as the base token for the **OviSync zkSync chain**, allowing wineries to pay for gas fees in a cost-effective manner without relying on ETH.

In addition, we have integrated a **crowdsale contract** where early investors can participate in the sale of **OpenVinoDAO tokens (OVI)** at a preferential rate:

* **Early Crowdsale**: **1.25 million OVI tokens** are sold at a rate of **2.5 tokens per USDC**.
* **Post-Early Crowdsale**: After the initial allocation is sold, the price switches to **1 OVI per USDC** for the remaining **2.5 million OVI tokens**.

This incentivizes early investment in OpenVinoDAO, with additional functionality for liquidity events when the token pool is funded.

## Troubleshooting

If you encounter issues with syncing or connectivity, try the following:

1. **Ensure correct network configuration**: Verify that all peer nodes are correctly configured and accessible.
2. **Check logs**: Review the logs of both **reth** and **prysm** to identify any errors during syncing.
3. **Restart the containers**: Sometimes, restarting the Docker containers can resolve issues related to connectivity and syncing.

```bash
docker-compose restart
```

## Contributing

We welcome contributions! If you'd like to contribute, please fork the repository and submit a pull request. Make sure to follow the contribution guidelines and ensure your code is properly tested before submitting.

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

