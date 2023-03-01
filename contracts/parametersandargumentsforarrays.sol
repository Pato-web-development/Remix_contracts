// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract arrayparameter{
string[] public thearray;
function editarraywithparameters(string memory _thearray) public {
thearray.push(_thearray);
}
function viewarray() public view returns (string[] memory){
    return thearray;
}
}