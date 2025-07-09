// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract IDRD is ERC20, Ownable {
    constructor() ERC20("Digital Rupiah", "IDRD") Ownable(msg.sender) {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // ADD THIS NEW FUNCTION
    /**
     * @dev Public function to allow anyone to burn (destroy) their own tokens.
     * This is useful for the frontend prototype redemption process.
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function burnFrom(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }
}