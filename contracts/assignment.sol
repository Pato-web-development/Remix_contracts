// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.1;

contract patrick {
    
    address public addresses;
    string public name;

     event Newregistration(string Name, address indexed sender);
      event Newdetails(string Name, address indexed sender);
       event ChangeName(string Name, address indexed sender);
        event checkowner(address indexed sender);


    modifier test(address __address){
            __address = msg.sender;
        require(__address != address(0));

        _;
    }

    function getthedomainnames() external returns(string[] memory) {
        
    }

    function register(string memory _name ) public {

        name = _name;
        addresses = msg.sender;

        require(keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked(_name)) , "name has been taken");
        require(addresses != address(0) , "address has been registered");

        emit Newregistration(_name , msg.sender);
    }
    function details() public returns(string memory owner, address _address){
            owner = name;
            _address = addresses;

            emit Newdetails(name , msg.sender);

    }
   function changeName(string memory ___name) public test(msg.sender){
        name = ___name;
    // __address = msg.sender;
     emit ChangeName(___name, msg.sender);
}

    function checkOwner(string memory __name) public returns (string memory owner, address _addresses){
        require(keccak256(abi.encodePacked(__name)) == keccak256(abi.encodePacked(name)), "name not registered");
            owner = name;
            _addresses = addresses;

            emit checkowner(msg.sender);
}

}