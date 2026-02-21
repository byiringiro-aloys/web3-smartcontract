//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract ScopeResolve{
    function add(uint a, uint b)public pure returns (uint,bool){
        return (a+b,true);
    }
}