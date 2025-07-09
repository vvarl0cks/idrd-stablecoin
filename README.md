# Digital Rupiah (IDRD) Stablecoin Prototype

This repository contains the prototype for a fiat-collateralized stablecoin pegged 1:1 to the Indonesian Rupiah (IDR). The smart contract is a standard ERC-20 token built using OpenZeppelin's secure contracts and is deployed on the BNB Smart Chain (BSC) Testnet.

The core functionality allows a designated "owner" (which would be a secure backend server in a full implementation) to mint new tokens upon receiving fiat deposits and burn tokens upon processing fiat withdrawals.

## Token Details

-   **Name:** Digital Rupiah
-   **Symbol:** IDRD
-   **Network:** BNB Smart Chain (Testnet)

## Getting Started

This project is built with Hardhat and is designed to be run in a development environment like Gitpod or any local machine with Node.js installed.

### Prerequisites

-   Node.js (v18 or later)
-   npm or yarn

### Setup

1.  **Clone the repository:**
    ```bash
    git clone <your-repository-url>
    cd idrd-stablecoin
    ```

2.  **Install dependencies:**
    ```bash
    npm install
    ```

3.  **Create an environment file:**
    Copy the example environment file to create your own local version.
    ```bash
    cp .env.example .env
    ```

4.  **Configure environment variables:**
    Open the `.env` file and add your BSC Testnet RPC URL and the private key of the wallet you will use for deployment.
    ```
    BSC_TESTNET_RPC_URL="[https://data-seed-prebsc-1-s1.bnbchain.org:8545/](https://data-seed-prebsc-1-s1.bnbchain.org:8545/)"
    PRIVATE_KEY="YOUR_64_CHARACTER_WALLET_PRIVATE_KEY"
    ```

### Compiling the Contract

To compile the smart contracts and generate TypeChain artifacts, run:

```bash
npx hardhat compile
```

## Deployment

The contract is configured to be deployed on the BSC Testnet.

### Deployment Command

To deploy the `IDRD.sol` contract, run the following command:

```bash
npx hardhat run scripts/deploy-idrd.ts --network bscTestnet
```

### Successful Deployment Log

The following output confirms a successful compilation and deployment to the BSC Testnet.

```
gitpod /workspace/idrd-stablecoin (main) $ npx hardhat compile
Downloading compiler 0.8.24
Generating typings for: 9 artifacts in dir: typechain-types for target: ethers-v6
Successfully generated 38 typings!
Compiled 7 Solidity files successfully (evm target: paris).

gitpod /workspace/idrd-stablecoin (main) $ npx hardhat run scripts/deploy-idrd.ts --network bscTestnet
Deploying Digital Rupiah (IDRD) contract...
Digital Rupiah (IDRD) deployed to: 0x5238B7651dFE2bccb4eAA135352041BB33d5813f
```

---

## Contract Information

-   **Contract Name:** `IDRD`
-   **Deployed Address (BSC Testnet):** `0x5238B7651dFE2bccb4eAA135352041BB33d5813f`
-   **Block Explorer Link:** [View on BscScan Testnet](https://testnet.bscscan.com/address/0x5238B7651dFE2bccb4eAA135352041BB33d5813f)

### Successful Deployment Log (Latest)

The following output confirms the successful deployment of the updated contract with the public `burn` function.
```
gitpod /workspace/idrd-stablecoin (main) $ npx hardhat compile
Generating typings for: 1 artifacts in dir: typechain-types for target: ethers-v6
Successfully generated 24 typings!
Compiled 1 Solidity file successfully (evm target: paris).

gitpod /workspace/idrd-stablecoin (main) $ npx hardhat run scripts/deploy-idrd.ts --network bscTestnet
Deploying Digital Rupiah (IDRD) contract...
Digital Rupiah (IDRD) deployed to: 0x6c1870cc0Ab6B824918b81937cCe06E4728