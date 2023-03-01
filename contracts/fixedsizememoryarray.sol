// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
//we just write everything inside one function because it has to do with memory
contract fixedsizememoryarray{
    function fixedsizememarray(uint a, uint b, uint c) public pure returns (uint[3] memory){
        uint[3] memory myarray = [a, b, c];
        return myarray;
    }
}