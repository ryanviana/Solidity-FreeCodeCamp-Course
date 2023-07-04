
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory {

    //Global variable from SimpleStorage type
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {

        //How do we create a contract from inside of another contract?
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }

    //Interacting with the contracts

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

        //In order to interact with a contract, we need 3 things
        //Address 
        //ABI - Application Binary Interface    
        //Function Signature
        //Data

        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {

        return simpleStorageArray[_simpleStorageIndex].retrieve();

    }

}