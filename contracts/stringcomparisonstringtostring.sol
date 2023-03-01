`1// SPDX-License-Identifier: SEE LICENSE IN LICENSE\   
pragma solidity ^0.8.1;
contract comparestrings{
    function comparenames(string memory _name) public pure returns (string memory){
        if (keccak256(bytes(_name)) == keccak256(bytes("pato"))) {return "this is correct";}
        else {return "not correct";}
    }
}