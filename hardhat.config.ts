import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "@nomicfoundation/hardhat-verify";
import "dotenv/config";

const bscTestnetRpcUrl = process.env.BSC_TESTNET_RPC_URL || "";
const privateKey = process.env.PRIVATE_KEY || "";
const bscscanApiKey = process.env.BSCSCAN_API_KEY || "";

const config: HardhatUserConfig = {
  solidity: "0.8.24",
  networks: {
    bscTestnet: {
      url: bscTestnetRpcUrl,
      accounts: [privateKey],
    },
  },
  // This is the updated section
  etherscan: {
    apiKey: bscscanApiKey // Use the simpler, direct format
  },
  // This section is added to hide the "Sourcify" message
  sourcify: {
    enabled: false
  },
};

export default config;