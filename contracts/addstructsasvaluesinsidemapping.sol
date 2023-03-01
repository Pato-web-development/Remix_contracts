// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract structinsidemapping{
    struct mycar{
       string brand;
       uint price;
    }
    mapping (uint => string) public mymapping;
function addvalues(uint mykey, string memory _brand, string memory _price){
    mycar memory carstructvariable = mycar(_brand, _price);
    mymapping[mykey] = carstructvariable;
}
function getvalues(uint mykey) public view returns (mycar memory){
    return mymapping[mykey];
}
}