// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasPriceExample {
    uint256 public storedValue=10;
    
    // Function to demonstrate gas price
    function setValue(uint256 _value) public {
        storedValue = _value;
    }
    
    // Get current gas price
    function getGasPrice() public view returns (uint256) {
        return tx.gasprice;  // Returns gas price in wei
    }
}
