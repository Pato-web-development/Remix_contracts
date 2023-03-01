// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract storearrayinsidemapping{
    mapping(uint => string[]) public arraymapping;
    function addvalues(uint mykey, string memory word1, string memory word2) public {
        arraymapping[mykey] = [word1, word2];
    }
    function getvalues(uint mykey) public view returns (string[] memory){
        return arraymapping[mykey];
    }
}