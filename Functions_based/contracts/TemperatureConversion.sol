//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;
import "hardhat/console.sol";

contract TemperatureConversion{
    uint public celsius = 25;

    function FahrenheitConversion() public view{
        uint fahrenheit = (celsius * 9 / 5) + 32;
        console.log("Fahrenheit conversion of 25 Celsius: ",fahrenheit);
    }

}