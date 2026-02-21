//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";

contract Animal{
    string public species;

    function setSpecies(string memory specie) public{
        species=specie;
    }

    function Sound() public virtual pure returns (string memory) {
        return "Some sound";
    }
}


contract Dog is Animal{
    function Sound() public override pure returns (string memory){
        return "Woof!";
    }
}