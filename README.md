# CREATE AND MINT TOKEN

This program contains a smart contract which creates a token on a local HardHat network, and then used Remix IDE to interact with it.

## Description

This program contains a simple contract named as MyToken, which contains a mint function to send ethers to the provided address,  burn function to deduct that amount from the wallet and transfer function to send amount to the provided address.


## Getting Started

### Executing program

To run this program, I have used online Remix Solidity IDE. You can visit the Remix website at https://remix.ethereum.org/ .
Extension used for creating a new file is .sol , example: fileName.sol

**Compiled contract on local HardHat network on VS Code using code:**

```Hardhat

npx hardhat compile

```

 It is used to compile a Solidity smart contract project using the Hardhat framework. 

 ```Hardhat

npx hardhat node

```

It is used to start a local Ethereum network using Hardhat. It spins up a local blockchain environment with a set of accounts and a simulated Ethereum network. 

SMART CONTRACT CODE:

```solidity

// SPDX-License-Identifier: MIT

```

This is a comment that specifies the license under which the code is released. In this case, it is the MIT license.

```solidity

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract

```

This line imports the ERC20.sol file from the OpenZeppelin library. The ERC20.sol file contains the implementation of the ERC20 token standard, which this contract will extend.

```solidity

contract MyToken is ERC20 { ... }  
  
```

This declares a new contract named Myether which extends the ERC20 contract from the OpenZeppelin library. In other words, Myether is a custom token contract that inherits the functionality of the ERC20 token.

```solidity

address private owner;
  
```

This declares a private state variable owner of type address. It will be used to store the address of the contract owner.

```solidity

 constructor() ERC20("Hytoken", "DSR") {
        // Initialize the token
    }
  
```

This is the constructor function that is called when the contract is deployed. It sets the initial state of the contract. In this case, it sets the name of the token to "Hytoken" and the symbol to "DSR". It also initializes the owner variable with the address of the contract deployer (msg.sender).

```solidity

 function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
```

This function allows the contract owner to mint new tokens. It takes two parameters: to (the address to which the new tokens will be minted) and amount (the number of tokens to mint). The onlyOwner modifier ensures that only the contract owner can call this function. Inside the function, the _mint function from the ERC20 contract is called to create and assign the new tokens to the specified address.

```solidity

 function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
  
```

This function allows any token holder to burn (destroy) their tokens. It takes one parameter: amount (the number of tokens to burn). Inside the function, the _burn function from the ERC20 contract is called to subtract the specified amount of tokens from the caller's balance.

```solidity

function transferTokens(address to, uint256 amount) public  returns (bool) {

        require(amount <= balanceOf(msg.sender), "Not enough balance to Transfer!");

        _transfer(msg.sender, to, amount);

        return true;
    }
  
```

This function allows token holders to transfer their tokens to another address. It takes two parameters: to (the address to which the tokens will be transferred) and amount (the number of tokens to transfer). It overrides the transfer function from the ERC20 contract. It first checks if the caller has a sufficient balance to make the transfer. If not, it throws an error. If the balance is sufficient, it calls the _transfer function from the ERC20 contract to perform the transfer.

## Authors

Abhishek Pal
[abhishekpal0103@gmail.com]
[22BCS13342@cuchd.in]

##Video 

Video link for reference
https://www.loom.com/share/02ebc11836c54bbabff715c9a68ff08f?sid=bcd882b4-64ef-44bf-9c9f-f7f4744f3703
## License

This project is licensed under the MIT License - see the License.md file for details.
