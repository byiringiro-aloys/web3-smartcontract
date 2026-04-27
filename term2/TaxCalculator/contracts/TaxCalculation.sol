// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.2;
import "hardhat/console.sol";

contract TaxCalculation{
    uint16 constant TAX_RATE = 5;
    uint16 internal price = 100;

    function TotalTax() public view returns (uint256){
        uint256 tax = (price*TAX_RATE)/100;
        uint256 total = price+tax;
        console.log("Tax paid is ",tax);
        return total;
    }

}