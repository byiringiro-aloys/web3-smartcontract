// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasLimitExample {
    uint256[] public numbers;
    
    function addNumbers(uint256 count) public returns (uint256[] memory) {
    uint256[] memory gasSnapshots = new uint256[](count);
    for (uint256 i = 0; i < count; i++) {
        numbers.push(i);
        gasSnapshots[i] = gasleft(); // record remaining gas after each push
    }
    return gasSnapshots;
    }
    
    // Get block gas limit
    function getBlockGasLimit() public view returns (uint256) {
        return block.gaslimit;
    }
    
    // Clear array
    function clearNumbers() public {
        delete numbers;
    }
}
