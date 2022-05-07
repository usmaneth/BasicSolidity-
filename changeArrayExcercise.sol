/* 

Excercise: Create a function that can fully remove an item from an array: 

1. Create an empty array called changeArray
2. Create  function called removeElement which sets the index argument 
of the array to the last eleement in the array. 
3. Remove the last index from that function with the pop method. 
4. Create a Function called test which pushes 1,2,3,4 into changeArray. 
5. Remove the element 2 from the array when the contract is called. 

*/ 

 pragma solidity >= 0.7.0 < 0.9.0; 

 contract arrayExcercise {
     uint[] public changeArray; 

     function removeElement(uint i) public { 
         changeArray[i] = changeArray[changeArray.length - 1]; 
         changeArray.pop();
     }

     function test() public { 
        /* changeArray.push(1);
         changeArray.push(2); 
         changeArray.push(3); 
         changeArray.push(4); 
         */ 
     for(uint i = 1; i <= 4; i++) {
         changeArray.push(i);
     }
     }

    function getLength() public view returns(uint) {
        return changeArray.length; 
    }

    function getChangeArray() public view returns(uint [] memory) {
        return changeArray;
    }
 }
