//Transactions and event logging
//Event Logging and Transactions
pragma solidity ^0.5.4;

contract transaction {
    //access contract address by using address.this
    
    //logging the senders address and amount sent
    event senderLogger(address);
    event valueLogger(uint);
    
    //Maybe we want only us to be able to access payable, as well as it only have a valid value
    address private owner;
    
    modifier isOwner {
        require(owner == msg.sender);
        _;
    }
    
    modifier validValue {
        assert(msg.value >= 1 ether);
        _;
    }
    
    constructor() public payable {
        owner = msg.sender;
    }
    
    //This is a fallback function::we can interact this function without having to specify a function
    //if anyone knows the address of this contract, they can send it ether now
    function () external payable isOwner validValue {
        emit senderLogger(msg.sender);
        emit valueLogger(msg.value);
    }
    
}

