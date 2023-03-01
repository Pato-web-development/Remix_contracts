// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1; // version of compiler used

//buggy erc20 token

contract W3BVIII{ 
    address public owner;                //contract owner,
    string private name;          //token name
    string private symbol;            //token symbol
    uint256 private decimal;       //token decimal
    uint private totalSupply;      //token total supply in circulation
    mapping (address => uint256) private balanceOf;
    mapping (address =>mapping(address => uint)) public allowance;
    event transfer_(address indexed from, address to, uint amount);
    event _mint(address indexed from, address to, uint amount);

    // saves token name, symbol and decimal 
    constructor(string memory _name, string memory _symbol){
        owner = msg.sender;

        name = _name;
        symbol = _symbol;
        decimal = 1e18;

    }
    
    //returns token name
    function name_() public view returns(string memory){
        return name;
    }

    //returns the token symbol
    function symbol_() public view returns(string memory){
        return symbol;
    }

    //returns token decimal
    function _decimal() public view returns(uint256){
        return decimal;
    }


    //returns total supply
    function _totalSupply() public view returns(uint256){
        return totalSupply;
    }

    //gets the token balance of each token holder
    function _balanceOf(address who) public view returns(uint256){
        return balanceOf[who];
    }


    //allows token holders to send tokens to others
    function transfer(address _to, uint amount)public {
        _transfer(msg.sender, _to, amount);
        emit transfer_(msg.sender, _to, amount);

    }

    //keeps track of the state changes
    function _transfer(address from, address to, uint amount) internal {
        require(balanceOf[from] >= amount, "insufficient fund");
        require(to != address(0), "transferr to address(0)");
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
    }

    /// @notice this function only reads from state and makes no changes
    /// @custom:  CHECK IF THIRD PARTY HAS BEEN APPROVED TO USE HOLDERS TOKENS
    function _allowance(address _owner, address spender) public view returns(uint amount){
    amount = allowance[_owner][spender];
    }

    /// @dev this function contains a bug
    /// @custom: ALLOW THIRD PARTIES TO INITIATE TOKEN TRANSFER IF APPROVED
    function transferFrom(address from, address to, uint amount) public returns(bool success){
        uint value = _allowance(from, msg.sender);
        require( amount <= value, "insufficient allowance");
        allowance[from][to] -= amount;
        _transfer(from, msg.sender, amount);
        success =true;

        emit transfer_(from, to, amount);


     //to allow token holders to approve spending of their tokens by others
    }
    function Approve(address spender, uint amount) public  {
        allowance[msg.sender][spender] = amount;


    }

   // a function to mint/create new tokens
    function mint(address to, uint amount) public {
        require(msg.sender == owner, "Access Denied");
        require(to != address(0), "transferr to address(0)");
        totalSupply += amount;
        balanceOf[to] += amount * _decimal();
        emit _mint(address(0), to, amount);


    }

    //this is to burn 90% of token total supply and send 10% to the owner
    function burn(uint256 _value) public returns (bool burnt) {
            require(balanceOf[msg.sender] >= _value, "insufficient balance");
            uint256 burning  = _value * decimal;
            uint256 sendtoowner = ((burning * 10)/100);
            uint256 amounttoburn = _value - sendtoowner;
            totalSupply -= amounttoburn;
            _transfer(msg.sender, owner, sendtoowner);
            burntozero(address(0), amounttoburn);


            burnt = true;
        }

    function burntozero(address to, uint amount) internal {

            to = address(0);
        balanceOf[to] += amount;
    }  
   // here we send the burnt tokens to the zero address
}