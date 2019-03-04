pragma solidity ^0.5.4;

import "browser/library.sol";
//everything is in a folder called browser
//say I wanted to use something like a github source, then I would do the following:
//import "github.com/wiilitscale/solidity/library"

//contract useLibraries is Libraties {
//    //Here I should have all the functionality of Libraries within the useLibraries 
//}

contract testLibrary {
    using intExtended for uint;
    //any uint also now has all the functionality that was defined in the library
    
    function testIncrement(uint _base) public returns(uint) {
        return intExtended.increment(_base);
    }
    
    function testDecrement(uint _base) public returns(uint) {
        return intExtended.decrement(_base);
    }
    
    function testIncrementByValue(uint _base, uint _value) public returns(uint) {
        return _base.incrementByValue(_value);
    }
    
    function testDecrementByValue(uint _base, uint _value) public returns (uint) {
        return _base.decrementByValue(_value);
    }
}
