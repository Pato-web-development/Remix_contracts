// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract whileloop{
    //we need to make an array and an unsigned integer to represent our base number
    uint[] public myarray; //array
    uint public mynumber = 2;  //reference and base
    function addtoarray() public{
        while (mynumber < 15){
     myarray.push(mynumber); mynumber++;
        }
    }
    function getarray() public view returns (uint[] memory){
        return myarray;
    }

    }