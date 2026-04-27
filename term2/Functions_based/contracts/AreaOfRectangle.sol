//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";


contract AreaCalculation{
    uint public LENGTH = 10;
    uint public WIDTH = 5;

    constructor(){
        console.log("Constructor called");
        console.log(msg.sender.balance);
    }

    function area() public view{
        uint result = WIDTH*LENGTH;
        console.log("The area is: ",result);
    }
}