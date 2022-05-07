pragma solidity >= 0.7.0 < 0.9.0; 

/* 

Loops allow you to iterate tyhrough data and take functional action depeending on the data

A "For" Loop is used to repeat a specifc block of code a known number of times. 
For example, if we want to check the grade of every student in the class, we loop from 1 to that number. 

*/ 


/* 
Create a function that can check if two numbers are divisible by each other
or are multiples of each other 

4 and 2 - ruturn true
3 and 5 - return false 

*/ 
contract loopContract { 
    
    
    function checkMultiples(uint _num, uint _nums) public view returns(bool) {

      // modulo operator = % the remainder value of R from integers 
      // 12 / 3 = 4 && 12 / 5 = 2 r 2 
      // take two  numbers and if thewy return a modulo of zero 
      // then the second is a multiple of the first 

      if( _num % _nums == 0) {
          return true; 
      } else {
          return false; 
      }
    }

    // list of numbers ranging from 1 - 10 "array" 
    uint[] public numbersList =  [1,2,3,4,5,6,7,8,9,10];

    // if we have 4, how many numbers in our list can be a multiple 
    // a loop that acts as a multiple checker in our numberslist 

    function multipleChecker(uint _number) public view returns(uint) {
        uint count = 0; 
        /* 
        for loop"  - 3 part statement
        1. Initalize the start of the loop
        2. Determine Length of runtime
        3. Direct the Index after each turn 
         */ 
        for(uint i=1; i < numbersList.length; i++) {
            // logic for loop 
            if(checkMultiples(numbersList[i], _number)) {
                count++;
            }
        
        }
        return count;
}
}
