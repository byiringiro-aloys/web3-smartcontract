//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";


contract DiscountCalculator{

    uint8 constant DISCOUNT_RATE = 10;
    uint256 internal originalPrice = 200;

    function finalPrice() public view{
        uint discount = (originalPrice*DISCOUNT_RATE)/100;
        console.log("Final price after discount: ",originalPrice-discount); 
    }

}
