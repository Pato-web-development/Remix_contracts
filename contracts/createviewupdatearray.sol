// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract secondarray{
   uint[] myarray; 
  uint[3] myarray2 = [7,2,0];
  function thearray() public view returns (uint[3] memory){
      return myarray2;
  }
  function myownarray() public {
      myarray2 = [5,7,4];
  }
  function myarray2update() external {
myarray2[2] = 9;
  }
  function thisarray() public {
      myarray = [2,8,9,3];
  }
  function firstarray() public view returns (uint[] memory){
      return myarray;
  }
}