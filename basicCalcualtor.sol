pragma solidity >= 0.7.0 < 0.9.0; 

contract basicCalculator {

    function addiiton(uint a, uint b) public view returns(uint) { 
        uint result = a + b; 
        return result; 
    }

    function subtraction(uint a, uint b) public view returns(uint) { 
        uint result = a - b; 
        return result; 
    }

    function multiplication(uint a, uint b) public view returns(uint) { 
        uint result = a*b; 
        return result; 
    }

     function division(uint a, uint b) public view returns(uint) {
        uint result = a/b; 
        return result; 
    }
}
