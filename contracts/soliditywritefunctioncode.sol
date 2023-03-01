// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
//we are writing a write function
contract ourWritefunction{
    uint public theNumber = 10;
    uint public a = 5;
    function thewritefunction() public {
    theNumber = a + 9; a = 6;
    }
    function showcode() public view returns (uint){
        return theNumber;
    }
}