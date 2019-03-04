//STRINGS AND THINGS
pragma solidity ^0.5.4;

library strings {
    
    function concat(string memory _base, string memory _value) internal returns(string memory){
        //first thing we need to do is convert these two values into bytes bytes 
        //cast string to bytes equivalent 
        bytes memory _baseBytes = bytes(_base);
        //cast value of string to a bytes equivalent
        bytes memory _valueBytes = bytes(_value);
        
        //create a new variable to store concatenated data 
        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);
        
        //iterate over _baseBytes and _valueBytes and then fix one onto the end of the other
        //i iterates over the strings we lready have
        uint i;
        //j iterates over the new values
        uint j;
        
        for(i=0; i< _baseBytes.length; i++){
            _newValue[j++] = _baseBytes[i];
        }
        
        for(i =0; i < _valueBytes.length; i++){
            _newValue[j++] = _valueBytes[i];
        }
        
        return string(_newValue);
    }
    
    function strpos(string memory _base, string memory _value) internal returns(int){
        //traditionally you return a negative value if it is a non-matching value
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);
        
        assert(_valueBytes.length == 1);
        
        for(uint i = 0; i < _baseBytes.length; i++){
            if(_baseBytes[i] == _valueBytes[0]){
                return int(i);
            }
        }
        return -1;
    }
}


