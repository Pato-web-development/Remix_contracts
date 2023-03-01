// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;
contract ourDataTypes{
    uint public number1 = 7;
    int public number2 = -9;
    uint8 public number3 = 200;
    string public name = "pato";
    bytes32 public thestatement = "here we go";
    bool public evaluating = false;
    address public theadmin = msg.sender;
}