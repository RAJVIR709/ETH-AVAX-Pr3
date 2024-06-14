//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("Hytoken", "DSR") {
        // Initialize the token
    }

    // Mint tokens
    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    // Burn tokens
    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }
    function transferTokens(address to, uint256 amount) public  returns (bool) {

        require(amount <= balanceOf(msg.sender), "Not enough balance to Transfer!");

        _transfer(msg.sender, to, amount);

        return true;
    }
}
