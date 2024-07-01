# MyToken Solidity Smart Contract

## Overview

This Solidity smart contract implements a basic ERC20 token with additional functionalities using OpenZeppelin libraries. The contract allows for minting new tokens by the owner, burning tokens by any holder, and transfers following the ERC20 standard.

## Features

- ERC20 Token: Implements the standard ERC20 token interface.
- Ownership: Uses Ownable from OpenZeppelin to restrict access to certain functions.
- Initial Supply: Upon deployment, the contract mints an initial supply of tokens to the contract owner.
- Only owner can mint but any user can burn the

## Installation

To use this contract:

1. Ensure you have Node.js and npm installed.
2. Clone the repository and navigate to the project directory.
3. Install dependencies:
	npm install @openzeppelin/contracts

4. Compile and deploy the contract using your preferred development environment (e.g., Hardhat, Truffle).

## Usage

### Constructor

The constructor initializes the token with a name and symbol provided during deployment. It also mints an initial supply of tokens to the contract deployer.

### Functions

- `mint(address to, uint256 amount)`: Allows Only the owner to mint new tokens and send them to the specified address.
- `burn(uint256 amount)`: Allows any token holder to burn (destroy) their own tokens.

## Security

- **Access Control**: The `onlyOwner` modifier ensures that only the contract owner can execute certain functions like minting new tokens.
- **Audits**: Consider security audits before deploying this contract in production to ensure it meets your security requirements.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

