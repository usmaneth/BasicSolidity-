   contract logicalOperators {
        uint a = 0; 
        uint b = 1; 

        function logic(uint a) public view returns(uint) {
            uint result = 0; 
            if(a > b && !(a == 4)){
                result = a + b; 
                return result; 
            } else {
                result = a - b; 
                return result; 
            }
        }
    }
