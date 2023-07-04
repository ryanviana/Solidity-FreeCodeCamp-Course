//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

//Example of inheritance
contract ExtraStorage is SimpleStorage{

     //If we do not like a function from the parent contract, we can override it.
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
