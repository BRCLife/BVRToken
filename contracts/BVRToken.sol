// contracts/BVRToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BVRToken is ERC20 {
    constructor(address[] memory owners, uint256[] memory supply) ERC20("BVR", "BVR") {
        require(owners.length == supply.length, "BVRToken: owners and supply length mismatch");
        for (uint i = 0; i < owners.length; i++) {
            _mint(owners[i], supply[i]*1e18);
        }
    }
}
