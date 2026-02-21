//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";

contract Base{
    uint public var1=20;
    uint private var2=30;
    uint internal var3=40;

    function getAllInBase() public view returns (uint global,uint unique,uint local){
        global=var1;
        unique=var2;
        local=var3;
    }    
    function setVar1(uint value) public {
        var1=value;
    }
}


contract Derived is Base{
    function getAllInDelived() public view returns(uint, uint){
        return (var1,var3);
    }
}

contract External{ 
    function ReadingFromBase(address _baseAddr) public view returns (uint){
        Base base = Base(_baseAddr);
        return base.var1();
    }
    //This is not possible as public variables are read-only to the outside world!
    // function setVar1FromBase(address _baseAddr,uint value) public{
    //     Base base = Base(_baseAddr);
    //     base.setVar1(value);
    // }
}