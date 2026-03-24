//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Simplefund{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    function sendEther(address payable resipient, uint amount)public payable {
        require(address(this).balance>=amount,"Insuficient balance!");
        resipient.transfer(amount);
    }


}