// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract comparestrings{
    uint public man = 25;
    function compare() public view returns (string memory){
        if (man == 25){return "this is correct";}
        else {return "not correct";}
    }
}