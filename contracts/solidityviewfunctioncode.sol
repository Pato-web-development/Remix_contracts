// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract myschool{
    string public theschool = "Web3Bridge";
    string public thedepartment = "Blockchain development";
    function school() public view returns (string memory, string memory){
        return (theschool, thedepartment);
    }
}