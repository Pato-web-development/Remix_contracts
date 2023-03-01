// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

//Token Contracts

//total supply, decimal, name and symbol
contract W3BVIII{
    address public owner;
//1 000 000 000 000 000 000
string private name;

string private symbol;

uint256 private decimal;

uint private totalSupply;
mapping (address => uint256) private balanceOf;
// owner => spender =>  amount
mapping (address =>mapping(address => uint)) public allowance;

event transfer_(address indexed from, address to, uint amount);
event _mint(address indexed from, address to, uint amount);


constructor(string memory _name, string memory _symbol){
    owner = msg.sender;

    name = _name;
    symbol = _symbol;
    decimal = 1e18;

}
//30 000 000 000 000 000 000
function name_() public view returns(string memory){
    return name;
}

function symbol_() public view returns(string memory){
    return symbol;
}

function _decimal() public view returns(uint256){
    return decimal;
}


function _totalSupply() public view returns(uint256){
    return totalSupply;
}

function _balanceOf(address who) public view returns(uint256){
    return balanceOf[who];
}



function transfer(address _to, uint amount)public {
    _transfer(msg.sender, _to, amount);
    emit transfer_(msg.sender, _to, amount);

}

function _transfer(address from, address to, uint amount) internal {
    require(balanceOf[from] >= amount, "insufficient fund");
    require(to != address(0), "transferr to address(0)");
    balanceOf[from] -= amount;
    balanceOf[to] += amount;
}

function _allowance(address _owner, address spender) public view returns(uint amount){
   amount = allowance[_owner][spender];
}

function transferFrom(address from, address to, uint amount) public returns(bool success){
    uint value = _allowance(from, msg.sender);
    require( amount <= value, "insufficient allowance");
    allowance[from][msg.sender] -= amount;
    _transfer(from, to, amount);
    success =true;

    emit transfer_(from, to, amount);



}
function Approve(address spender, uint amount) public  {
    allowance[msg.sender][spender] += amount;


}


 function mint(address to, uint amount) public {
     require(msg.sender == owner, "Access Denied");
    require(to != address(0), "transferr to address(0)");
    totalSupply += amount;
    balanceOf[to] += amount * _decimal();
    emit _mint(address(0), to, amount);
 }
function burn(uint256 _value) public returns (bool burnt) {
    require (balanceOf[msg.sender] >= _value, "insufficient balance");
    uint256 burning = _value * decimal;
    uint256 amounttoburn = ((burning * 90)/100);
    totalSupply -= amounttoburn;
    uint256 sendtoowner = ((burning * 10)/100);
    _transfer (msg.sender, owner, sendtoowner);
    burntozero(msg.sender, amounttoburn);
    burnt = true;
}
function burntozero(address to, uint amount) internal {
    to = address(0);
    balanceOf[to] += amount;
}

}
