
Usman Asim <usmanasim27@gmail.com>
Fri, Feb 4, 8:59 PM
to me

// Excercise in Defi
/*

Fundemental Logic for Staking / Yield Farming 

1. Create a stakingWallet variable as an integer and set it to the value of 10.
2. Write a function called airDrop which has public visibility, is IDE viewable and returns an integer
3. Create decision making logic so that if the wallet has a value of 10 then add to the wallet 10 more. 
4. Add an else so that if the wallet does not equal the vale of 10 to add only 1 more. 
5. Return the vlaue of the wallet. 
6. Deploy the contract to test the results - try changing the value of the wallet to 6 and reploying for varying results.

*/ 

pragma solidity > 0.7.0 < 0.9.0; 


//my version >:)
    contract defiExcercise{
        uint stakingWallet = 10; 
         

            function airDrop(uint stakingWallet) public view returns(uint){
                if(stakingWallet == 10) {
                uint b = 10;
                uint result = stakingWallet + b;
                return result; 
                } else {
                uint b = 1;
                uint result = stakingWallet + b;
                    return result; 
            }
        }
    }


// instructor version
    contract defiExcercise2{
        uint stakingWallet = 30;

        function airDrop2() public view returns(uint){ 
            if(stakingWallet == 30){
               return stakingWallet + 15; 
            } else {
                return stakingWallet + 5;
            }
        } 
    }
