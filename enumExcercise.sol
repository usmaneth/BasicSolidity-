/*

1. Create an Enum for the color of shirts called shirtColor and set it to the options of either 
RED, WHITE, or BLUE 

2. Create a data of shirtColor called defaultChoice which is a constat set to the color Blue 
3. Create a data of shirtColor called choice and don't initate the value. 

4. Create a function of called setWhite which changes the shirt color of shirtColor to white. 
5 Create a function getChoice, which returns the current choice of the shirt color. 
6. Create a functrin getDefaultChoice which retruns the default choice of the shirt color. 

*/ 

pragma solidity >= 0.7.0 < 0.9.0; 

contract enumExcercise { 
    enum shirtColor {RED, WHITE, BLUE}

    shirtColor constant defaultChoice = shirtColor.BLUE; 
    shirtColor choice; 

    function setWhite() public { 
        choice = shirtColor.WHITE; 
    }

    function getChoice() public view returns(shirtColor) {
        return choice; 
    }

    function getDefaultChoice() public view returns(shirtColor) {
     //   return uint(defaultChoice);

     return defaultChoice; 
    }

}
