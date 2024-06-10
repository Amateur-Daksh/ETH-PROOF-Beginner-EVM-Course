// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "DAKSH";
    string public tokenAbbrv = "DSH";
    uint public totalSupply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;            // Increase total supply by the value
        balances[_address] += _value;     // Increase balance of the given address
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) { // Check if the address has enough tokens
            totalSupply -= _value;         // Decrease total supply by the value
            balances[_address] -= _value;  // Decrease balance of the given address
        }
    }
}
