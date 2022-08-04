// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract  SimpleStorage {
    uint256 public favoriteNumber;

    // bool favoriteBool = true;
    // string favoriteString = "String";
    // int256 favoriteInt = -5;
    // address favoriteAddress = 0x66eb953c2D88bB95fB4ef0B91D0Ce777065747c1;
    // bytes32 favoriteBytes = "cat";
    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}