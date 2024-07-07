# ETH-ETHToken
This Solidity program describes a basic ERC-20-like token on the Ethereum blockchain. It shows creating a smart contract for a cryptocurrency token, including functionalities for minting and burning tokens. This contract is a basic foundational piece for anyone looking to understand or develop their own tokens on Ethereum.
# Description
This program is a smart contract written in Solidity, designed for the Ethereum blockchain. It includes the following features:

1. A token with a name, symbol, and total supply.
2. A mapping of addresses to their respective balances.
3. A mint function to increase the total supply and an address's balance.
4. A burn function to decrease the total supply and an address's balance, with checks to ensure the address has enough balance to burn.
This contract serves as a basic example of a token contract, providing a clear starting point for more complex token implementations or other blockchain-based projects.
# Getting Started
# Executing program
To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

1. Go to the Remix website at https://remix.ethereum.org/.
2. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ETHToken.sol).
3. Copy and paste the provided Solidity code into the file
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
5. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., "0.8.18"), and then click on the "Compile ETHToken.sol" button.
6. Once the code is compiled, deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ETHToken" contract from the dropdown menu, and then click on the "Deploy" button.
7. After deploying, you can interact with the contract by calling its mint and burn functions. Select the deployed "MyToken" contract in the left-hand sidebar to see these functions and interact with them.
8. copy the address of the tokens to be burnt and fill them in the address field of the mint function also fill the amount of tokens to be burnt and then check the fluctuations after pressing the totalsupply buttton.
9. 
# Authors
Satyam
# License
This project is licensed under the MIT License - see the LICENSE.md file for details.# ETH-ETHToken
