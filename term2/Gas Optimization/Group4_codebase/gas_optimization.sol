// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasCostOptimization {
    // ❌ EXPENSIVE: Multiple storage writes
    uint256 public value1;
    uint256 public value2;
    
    function expensiveUpdate(uint256 a, uint256 b) public {
        value1 = a;  
        value2 = b;  
    }
    
    // ✅ CHEAPER: Single storage write
    struct Values {
        uint256 a;
        uint256 b;
    }
    Values public packedValues;
    
    function cheaperUpdate(uint256 a, uint256 b) public {
        packedValues = Values(a, b);  // Single SSTORE
    }
    
    // ✅ BEST: Use memory for calculations
    function calculate(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 result = x + y;  // Done in memory, very cheap
        return result;
    }
}
