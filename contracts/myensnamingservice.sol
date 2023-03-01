// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;
//Description:
//The Ethereum Naming System maps a domain name to an ethereum address. It's a safe way of share an ethereum address in a human readable way without committing error.

//Instruction
//Read up the ENS doc
//The ENS registers a name to an address
//It looks up the registered name
//It has function that reassign an address name
//for every function implementation, an event should be emitted
//No two address can claim the same name
//Only the owner can reassign a new address to a name
//Extend the ENS contract you wrote to have the following
//A list of all the names registered on your platform
//Delete name from the record and update the length
/// @title ENS: Ethereum Naming System
/// @author Patrick