//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";


contract taxCalculator{
    uint constant TAX_RATE=5;
    uint private price=100;


    function totalPrice() public view{
        uint totaltax = (price*5)/100;
        uint total_price=price+totaltax;
        console.log("Total price: ",total_price);
    } 

}