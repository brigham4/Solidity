pragma solidity ^0.5.4;

import "browser/Strings.sol";

contract testStrings{
    
    using strings for string;
    
    function testConcat(string memory _base) public returns(string memory){
        return _base.concat("_suffix");
        //note: the value passed into concat is actuallt the second value
        //i.e. the _value in concat here is _suffix
    }
    
    function needleInHaystack(string memory _base, string memory _value) public returns(int){
        return _base.strpos("t");
    }
}
