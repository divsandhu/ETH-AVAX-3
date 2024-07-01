require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.24",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  paths: {
    sources: "./contracts", // Directory for contract sources
    tests: "./test",        // Directory for test files
    cache: "./cache",       // Directory for the cache files
    artifacts: "./artifacts"// Directory for the compiled contract artifacts
  }
};
