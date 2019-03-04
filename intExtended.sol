//LIBRARY STUFF
pragma solidity ^0.5.4;
//here we are learning imports

//extended functionality set to unsigned integer
library intExtended{
  
  function increment(uint _self) public returns(uint) {
      return _self+1;
  }
  
  function decrement(uint _self) public returns(uint) {
      return _self-1;
  }
  
  function incrementByValue(uint _self, uint _value) public returns(uint) {
      return _self + _value;
  }
  
  function decrementByValue(uint _self, uint _value) public returns(uint) {
      return _self - _value;
  }
}
