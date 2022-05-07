/* OPERATORS - 

An operator in a programming language is a symbol that tells the compiler 
or the interperter to preform specific mathematical, relational, or logical 
operations and produce a final result.

+ - & * = symbols 

Arithmetic Operators: + - * / % ++ -- 

Comparison Operators: == = 

Operands: Variables : a + b ( a and b are the operands where + is the operator) 

Operators: Signs 

*/ 

pragma solidity >= 0.7.0 < 0.9.0; 

    contract Operators {
        function calculator() public view returns(uint) {
            uint a = 5;
            uint b = 8;
            return a + b ;        }
    }

    /*


    The Modulo Calculation Trick ( finding the remainder % ) 

    1. Divide the dividend (1st number) by the divisor (second number)
    2. disregard the fraction in the result 
    3. multiply the result (quotient) by the divisor (second number) 
    4. subtract the new resuult from the divident (first number) 

    1. 12 (dividend)  % 23 (divisor) 
    2. q = 12 / 23, q = 0 
    3. 0*23 = 0, nR = 0
    4. R = 12 - 0, R = 0

    1. 112 % 35 = R 
    dividend = 112, divisor = 35 
    2. q = 3
    3. 3*35 = 105 
    4. 112 - 105 = 7 
    r = 7

    Arithmetic Excercises: 

    a = 2, b = 12

    1. a + b - b + a = ? 
        2a - 0 = 2(a) = 2(2) = 4


    2. a * b * b - 1 = ? 
        2 * 12 * 12 - 1 = 

    3. b + b++ + a++ = ?
        12 + 13 + 3 = 28 
    4. (b % a) + 3 = ? 
        12 % 2 + 3  = 3 


    */ 


    /* Comparison Operators: Operators which compare operands 

    ex: less than: <, greater than: >, equality: ==, false equality: != 
        less than or equal to: <=, greater than or equal to: >= 

    */ 

    contract comparisonOperators {

        uint a = 482; 
        uint b = 6; 

        function compare() public view returns(uint) { 
            
            // < less than 
            require(a < b, 'Get Rekt');

            // require makes sure requirements are met before running code
           // otherwise will return error message 
        
        }
        
    /* Logical Operators: && (Logical AND), || (Logical OR), ! (Logical NOT) 
        Bitwise Operators: & (Bitwise AND), | (BitWise OR), ^ (Bitwise XOR) 
    */ 

    // a < b && b > c - logical AND - Both conditions must be true/satisfied
    // a < b || b > c - Logical AND - Either condition can be true/satisifed for function to run
    // !(a < b) = logical NOT 
    }

    contract logicalOperators {


        function logic(uint a) public view returns(uint) {
            uint result = 0; 
             uint a = 17; 
            uint b = 32; 
        
            if(a < b || a == 3){ 
                result = a + b; 
            } else{ 
                result = a*b;
            }
            return result;
        }
        function logic2() public view returns(uint) {
            uint a = 17; 
            uint b = 32; 
        

            if(a < b && a != b) {
                uint multiplationResult = a*b;
                uint result = multiplationResult / b; 
                return result; 
            }
        }
    }

    // 1.create a function which will multiply a by b and divide 
    // the result by b 
    //Only return multiplation result if b is greater than a and a does not 
    // equal b. 
    // Initialize a = 17 and b to 32 

    /* 

    Assignment Operator: = (a=b) means a is assigned the value of b 
    A gets what B is 

    */

    contract assignmentOperator {
        uint b = 4; 
        uint a = 3; 
        
        function assign() public view returns(uint) {
           uint c = b; 
           return c;  
        }
    }
