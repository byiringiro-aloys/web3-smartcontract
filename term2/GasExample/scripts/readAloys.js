const { ethers } = require("hardhat");

async function main() {
    // 1. Get deployed contract instance
    const [deployer] = await ethers.getSigners();
    const MyContract = await ethers.getContractFactory("MyContract");
    const contract = await MyContract.attach("0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3");

    const val = await contract.aloys(); // FREE
    console.log("Aloys value:", val.toString());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
      console.error(error);
      process.exit(1);
  });
