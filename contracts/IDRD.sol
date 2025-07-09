// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title Digital Rupiah Stablecoin
 * @dev A simple ERC20 token pegged 1:1 to the Indonesian Rupiah.
 * The owner of the contract has the sole authority to mint (create) and burn (destroy) tokens.
 */
contract IDRD is ERC20, Ownable {
    // To change the name, edit the two strings in the line below
    constructor() ERC20("Digital Rupiah", "IDRD") Ownable(msg.sender) {
        // The initial owner is the wallet that deploys this contract.
    }

    /**
     * @dev Creates `amount` new tokens and assigns them to `to`.
     * Only the owner (your backend server) can call this.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`.
     * Only the owner (your backend server) can call this for redemptions.
     */
    function burnFrom(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }
}