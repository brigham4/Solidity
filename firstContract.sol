pragma solidity ^0.5.4;
//version of solidity compiler

contract FirstContract {

    string firstName;
    uint age;
    
    function setStudent(string memory _firstName, uint _age) public {
        //takes in a name and age and sets them
        firstName = _firstName;
        age = _age;
        
    }
    
    function getStudent() public view returns (string memory, uint){
        //get the students name and age
        return(firstName, age);
    }
    
}
