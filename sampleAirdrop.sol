pragma solidity >= 0.7.0 < 0.9.0; 

contract sampleAirDrop {
    uint AccountBalance = 0; 
    
    function airDrop(uint userInput) public view returns(uint) {
        if(userInput > 10) {
            return AccountBalance + 50 ; 
        } else {
            return AccountBalance + 10;
        }
    }
}
