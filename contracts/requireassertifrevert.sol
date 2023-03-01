//SPDX-License-Identifier: see license in license
pragma solidity ^0.8.1;
contract requireassertifrevert{
    //for the require function
    uint public a;
    function thefunction(uint thenum) public {
        require(thenum > 6, "your value is less than 6");
        a = thenum + 77;
    }
// for the assert function
uint public b;
function thefunction2(uint thenum2) public {
    assert(thenum2 < 80);
    b = thenum2 - 2;
}
//for the if function
uint public c;
function thefunction3(uint thenum3) public {
    if (thenum3 > 7){c = thenum3 + 100;}
}
//for the revert function
uint public d;
function thefunction4(uint thenum4) public {
    if (thenum4 > 200){d = thenum4 + 87;}
    else {revert("the fourth number is too small");}
}
}