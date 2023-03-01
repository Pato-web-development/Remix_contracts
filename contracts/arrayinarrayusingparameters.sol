// SPDX-License-Identifier: see license in license
pragma solidity ^0.8.1;
contract arrayinarray{
    string[][] public mainarray;
    function addtomainarray(string[] memory _array1, string[] memory _array2) public{
        mainarray.push(_array1); mainarray.push(_array2);
    }
    function viewmainarray() public view returns (string[][] memory){
        return mainarray;
    }
}