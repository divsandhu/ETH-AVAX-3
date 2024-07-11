// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        // Mint an initial supply to the contract owner
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        // Minting
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        // Burning
        _burn(msg.sender, amount);
    }

    function transferTokens(address recipient, uint256 amount) public {
        // Explicit transfer function
        _transfer(msg.sender, recipient, amount);
    }
}
