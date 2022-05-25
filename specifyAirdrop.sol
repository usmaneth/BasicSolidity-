pragma solidity ^0.8.0;

contract Airdrop {
    function airdropTokens(address payable _to, uint256 _amount) public {
        require(balanceOf(msg.sender) >= _amount); // Checks if the central wallet has enough tokens to airdrop

        require(_amount > 0); // Checks if the amount of tokens to be airdropped is greater than 0

        _to.transfer(_amount); // Airdrops the tokens to the specified address
    }

    function balanceOf(address  _owner) public view returns (uint256 balance) {
        return _owner.balance; // Returns the balance of the specified address
    }
}
