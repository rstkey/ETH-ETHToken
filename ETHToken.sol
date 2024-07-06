// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ETHToken {
    // Public variables to store details about the token
    string public tokenName = "ETHToken-ETH";
    string public tokenSymbol = "METH";
    uint256 public totalSupply;

    // Mapping of addresses to balances
    mapping(address => uint256) public balances;

    // Mint function to increase total supply and balance of the sender
    function mint(address to, uint256 amount) public {
        totalSupply += amount; // Increase total supply by amount
        balances[to] += amount; // Increase balance of the receiver by amount
    }

    // Burn function to decrease total supply and balance of the sender
    function burn(address from, uint256 amount) public {
        require(balances[from] >= amount, "Insufficient balance to burn"); // Ensure sender has enough balance
        totalSupply -= amount; // Decrease total supply by amount
        balances[from] -= amount; // Decrease balance of the sender by amount
    }
}
