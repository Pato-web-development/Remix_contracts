// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract newarray {
    string[] public thearray = ["bull:john", "cow", "lion"];
function addtoarray() public {
    thearray[1]= "tiger"; thearray[2] = "hen";
}
function ourarray() public view returns (string[] memory){
    return thearray;
}
}