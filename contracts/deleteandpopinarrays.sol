// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
//using the delete to delete specific items unlikie pop() that deletes only what is in front
contract deleteandpopinarrays{
    uint[] public myarray = [2,7,8,9,5,44,30,22];
function deletefromarray() public{
    delete myarray[3];
}    
function getarray() public view returns (uint[] memory){
    return myarray;
}
}