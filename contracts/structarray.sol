// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract ourstructarray{
    struct thearray {
       string name;
       string class;
        uint id;
    }
    thearray[] public arrayvariable;
    function getvariabl() public {
        arrayvariable.push(thearray("pato", "chemical", 2023));}
        function showvariable() public view returns (thearray[] memory){
            return arrayvariable;
        }
    }
