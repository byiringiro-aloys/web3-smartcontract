# Web3 Learning Projects

This repository contains a collection of introductory Solidity smart contracts and Hardhat projects designed for learning Web3 development.

## Projects Overview

### 1. Functions_based
A collection of simple contracts demonstrating basic mathematical functions and logic in Solidity.
- **AreaCalculation**: `AreaOfRectangle.sol` - Calculates the area of a rectangle with fixed dimensions.
- **DiscountCalculator**: `DiscountCalculator.sol` - Computes the final price after applying a discount.
- **TemperatureConversion**: `TemperatureConversion.sol` - Converts temperature from Celsius to Fahrenheit.

### 2. GasExample
- Contains `gas_price_verification.sol`, an example intended to explore storage variable access and gas considerations.

### 3. HelloWorld
- **HelloWorld**: `helloWorld.sol` - A classic introductory contract that stores and retrieves a greeting message.

### 4. TaxCalculator
- **TaxCalculation**: `TaxCalculation.sol` - Implements a simple tax calculator that adds a fixed tax rate to a base price.

## Tech Stack
- **Solidity**: Smart contract programming language.
- **Hardhat**: Ethereum development environment (used for `console.log` debugging).

## Getting Started

These projects are set up to work with Hardhat. To run them:

1.  Navigate into a project directory (e.g., `cd Functions_based`).
2.  Install dependencies (if not already installed):
    ```bash
    npm install
    ```
3.  Compile the contracts:
    ```bash
    npx hardhat compile
    ```
