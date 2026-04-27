//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") Ownable(msg.sender) {
        // Mint 1 million tokens to contract deployer
        _mint(msg.sender, 1000000 * 10**decimals());
    }
    
    // Only owner can mint new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
    // Burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}

/*
 * TO TEST IN REMIX:
 * 1. Make sure you're using Remix with @openzeppelin/contracts
 * 2. Deploy the contract
 * 3. Check balanceOf(your_address) - should show 1,000,000 tokens
 * 4. Try transfer(recipient, amount) to send tokens
 * 5. Use mint() as owner to create more tokens
 * 6. Try burn() to destroy tokens
 */
