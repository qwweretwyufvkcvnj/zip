// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the details about the coin
    string public tokenName = "Craft";
    string public tokenAbbrv = "MIT";
    uint public totalSupply = 0;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Mint function to create new tokens and assign them to an address
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to destroy tokens from an address
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}