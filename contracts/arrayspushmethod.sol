// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract arraypushandpopmethods{
    //thus is the first array
    uint[] public thearray = [66, 75, 88];
function pushto() public {
     thearray.push() = 2;
}
function shownewarray() public view returns (uint[] memory){
    return thearray;
}
//this is the second array
string[] secondarray = ["web 1", "web 2", "web 3", "web 4"];
function removefromsecondarray() public {
    secondarray.pop();
}
function thesecondarray() public view returns (string[] memory){
    return secondarray;
}
}