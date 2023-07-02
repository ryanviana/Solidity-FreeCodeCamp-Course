// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

//Smart contracts have addresses just like our wallet accounts do
contract SimpleStorage {
 
    //Basic variable types in Solidity are
    //boolean, uint, int, address, bytes
    //Uint is special because we can specify the number of bits it can hold, 256 is the default.

    //When the value is not set in the constructor, the default value is 0.
    //When we set a variable to public, it creates a getter function for us.
    //The default visibility is Internal
    uint256 public favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;
    
    //Instance of a struct
    //People public person = People({favoriteNumber: 2, name: "Patrick"});
    
    //Array (dynamic) of structs
    People[] public people;

    //We are keeping _name as a memory variable because we only want to store it for the duration of the function call.
    function addPerson(string memory _name, uint256 _favoriteNumber) public { 
        //people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        people.push(People(_favoriteNumber, _name));
        //We are using the name as the key and the favoriteNumber as the value.
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    } 

    //Any time you change something on-chain, including making a new contract, it happens in a transaction.
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

}