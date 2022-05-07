/* 

Mapping is a reference type as arrays and structs. Following is the syntax to declarte a mapping type. 
Mapping allows you to save data and add a key that you specify and then retrive that info later.

Similar to a struct o r array - it is a reference type. 
In Solidity you cant iterate through a map - you need to store the keys in an array and you cant give size 
get set and delete a value from a mapping. 

*/ 

pragma solidity >= 0.7.0 < 0.9.0; 

contract learnMapping { 
   
    // key and value - key can be string uint or bool - value can be anything 

    // you create a library that has keys and values assigned. 
    //mapping(key => value) 
    mapping(address => uint) public myMap; 

    function setAddress(address _addr, uint _i) public { 
        myMap[_addr] = _i; 
    }

    function getAddress(address _addr) public view returns(uint) { 
        return myMap[_addr];
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}
