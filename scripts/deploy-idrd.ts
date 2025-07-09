import { ethers } from "hardhat";

async function main() {
  console.log("Deploying Digital Rupiah (IDRD) contract...");

  const idrdContract = await ethers.deployContract("IDRD"); // Make sure "IDRD" matches your contract name
  await idrdContract.waitForDeployment();

  const contractAddress = await idrdContract.getAddress();
  console.log(`Digital Rupiah (IDRD) deployed to: ${contractAddress}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});