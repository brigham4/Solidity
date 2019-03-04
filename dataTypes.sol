//DATA TYPES, BASIC WALLET

pragma solidity ^0.5.4;

contract dataTypes {
    //knocking through the basic data types in solidity
    
    bool myBool = true;
    //or false
    
    //you can define the length of integers in bits in solidity, note that it must be divisible by 8
    int8 myInt = 126;
    //between 127 and 128
    int112 myInt2;
    uint8 myUInt = 255;
    
    //stores strings in arrays of integers:: when you create a string, what you're actually creating is 
    //an array of values
    string myString;
    uint8[] myStringArr;
    
    //because of the previous thing, some funny things happen: i.e. you cannot pass an array of strings 
    //because this is actually a nested array
    function myFunc(string memory s) public {
    }
    
    //with bytes you can specify a range similarly to integers (Doesnt have to be div by 32)
    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;
    
    //Fixed point number: something you should use in financial system
    //Do not use floating point number in a financial system
    //fixed: 128 bits
    //fixed myFixed;
    //fixed256x8 myFixed2 = 1; //255.0 (one decimal place, integer portion up to 255)
    //ufixed myFixed3 = 1;
    
    //data type consisting of a set of named values called elements, members, enumeral, or enumerators of the type.
    enum Action {ADD, REMOVE, UPDATE}
    
    Action myAction = Action.ADD;
    
    address myAddress;
    
    //sender::address of person interacting with the contract
    function assignAddress() public{
        myAddress = msg.sender;
        myAddress.balance;
        //myAddress.transfer(10);
    }
    
    //arrays
    uint[] myIntArr = [1,2,3];
    
    function arrFunc() public {
        myIntArr.push(1);
        //you can do this as much as you want because myIntArr does not have a predefined length
        myIntArr.length;
        //grab the length
        myIntArr[0];
        //grab a specific element
    }
    
    uint[10] myFixedArr;
    //if you try to push past 10 into this array, you should get an out of bounds exception
    
    //an object with no functionality
    struct Account {
        uint balance;
        uint dailyLimit;
    }
    //create an instance of the struct account
    Account myAccount;
    //to access member attributes of  struct do the following:
    function structFunc() public {
        myAccount.balance = 100;
    }
    
    //this is an associative array essentially
    mapping (address => Account) _accounts;
    
    function () external payable{
        //map an address to an account
        _accounts[msg.sender].balance += msg.value;
        //everytime you make a payable function call to mappingFunc, you will pass any value into your balance
        //this essentially then functions as a wallet
    }
    
    function getBalance() public returns (uint) {
        return _accounts[msg.sender].balance;
    }
    
}

