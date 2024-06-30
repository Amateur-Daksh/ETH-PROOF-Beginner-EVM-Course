# MyToken Smart Contract

## Overview
This repository contains a simple ERC20-like token smart contract written in Solidity. The contract allows for token minting and burning functionalities.

### Contract Details
- **Token Name:** DAKSH
- **Token Symbol:** DSH
- **Initial Total Supply:** 0

## Functionality

### Minting Tokens
The `mint` function allows for the creation of new tokens. It increases the total supply of tokens and adds the specified amount to the balance of the given address.

#### Function Signature:
```solidity
function mint(address _address, uint _value) public
```

### Burning Tokens
The `burn` function allows for the destruction of tokens. It decreases the total supply by the specified amount and decreases the balance of the given address if they have enough tokens.

#### Function Signature:
```solidity
function burn(address _address, uint _value) public
```

## Example Interaction

### Using Remix IDE (on local development network)

1. Deploy the Contract:
   - Copy the Solidity code into Remix IDE.
   - Compile and deploy the contract on a local development network (e.g., Ganache).

2. Mint Tokens:
   - Call the `mint` function with an address and an amount to create new tokens.
   - Example: Mint 100 tokens to address `0x123...456`.
     ```javascript
     mint("0x123...456", 100); // This will add 100 tokens to the specified address
     ```

3. Burn Tokens:
   - Call the `burn` function with an address and an amount to destroy tokens.
   - Example: Burn 50 tokens from address `0x123...456`.
     ```javascript
     burn("0x123...456", 50); // This will remove 50 tokens from the specified address, if it has sufficient balance
     ```

## Usage
To use this contract, you can deploy it to a compatible Ethereum network (such as Rinkeby, Ropsten, or a local Ganache instance) using tools like Remix or Truffle. Once deployed, you can interact with it by calling the `mint` and `burn` functions.





