/* 

1. Create a Contract called Base which stores full accessible (inside and outside) integer data upon deployment
2. Create a contract caleld Derviced which derives the data from the base and runs a function that always outputs the 
data to the integer 5. 

*/ 

pragma solidity >= 0.7.0 < 0.9.0;

contract Base {
    uint data; 
                                               
    constructor(uint _data) public { 
        data = _data; 
    }
    function deriveData() public view returns(uint) {
    return data; 
}
}

contract Derived is Base(5) { 

  function deriveBaseData() public view returns(uint) {
    return data; 
}
}
