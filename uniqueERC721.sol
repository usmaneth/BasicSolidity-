pragma solidity ^0.7.0;

contract ERC721Token {

/* Public variables of the token */
   string public name;
   string public symbol;
   uint8 public decimals = 18;
   uint256 public totalSupply;

/* This creates an array with all balances */
   mapping (address => uint256) public balanceOf;
   mapping (address => mapping (uint256 => bool)) public approvedForAll;
   
/* This generates a public event on the blockchain that will notify clients */

   event Transfer(address indexed _from, address indexed _to, uint256 _tokenId);
   event Approval(address indexed _owner, address indexed _approved, uint256 _tokenId);

/* Initializes contract with initial supply tokens to the creator of the contract */

   constructor(uint256 _initialSupply, string memory _name, string memory _symbol) public {

         require(_initialSupply != 0);
         require(_name.length != 0);
         require(_symbol.length != 0);

         balanceOf[msg.sender] = _initialSupply;              // Give all initial tokens to owner
         totalSupply = _initialSupply;                        // Update total supply
         name = _name;                                        // Set the name for display purposes
         symbol = _symbol;                                     // Set the symbol for display purposes
      }



/* Send coins */

   function transfer(address _to, uint256 _tokenId) public {
   
      require(balanceOf[msg.sender] >= _tokenId);                             // Check if the sender has enough
      require(approvedForAll[msg.sender][_to] || ownerOf(_tokenId) == msg.sender);
      require(!existedTokens[_tokenId]);
      
      balanceOf[msg.sender] -= _tokenId;                              // Subtract from the sender
      balanceOf[_to] += _tokenId;                                     // Add the same to the recipient

      ownerOf[_tokenId] = _to;                                        // Set the new owner of the token

      Transfer(msg.sender, _to, _tokenId);                            // Notify anyone listening that this token changed hands

      existedTokens[_tokenId] = true;
   }



/* Set or reaffirm the approved address for an operator */

   function setApprovalForAll(address _operator, bool _approved) public {
   
      require(_operator != msg.sender);
      approvedForAll[msg.sender][_operator] = _approved;
      Approval(msg.sender, _operator, _approved);
   }



/* Get the approved address for an operator */

   function getApprovedForAll(address _owner, address _operator) public view returns(bool) {
      return approvedForAll[_owner][_operator];
   }



/* Get the token ID at a given approval slot */

   function operatorApproval(address _owner, uint256 _index) public view returns(uint256) {

      require(_index < maxOperatorCount);
      uint256 tokenId = operatorTokens[_owner][_index];
      require(tokenId != 0);
      return tokenId;
   }

/* Helper function to mint tokens */

   function _mint(address _to, uint256 _tokenId) internal {

      require(_to != msg.sender);
      require(!existedTokens[_tokenId]);
      balanceOf[_to] += 1;
      totalSupply += 1;
      ownerOf[_tokenId] = _to;
      Transfer(0x0, _to, _tokenId);
      existedTokens[_tokenId] = true;
   }



/* Operator functions */

   function _approve(address _owner, uint256 _tokenId) internal {

      require(ownerOf(_tokenId) == msg.sender);
      require(_tokenId < maxTokenId);
      require(tokenOperators[_tokenId][msg.sender] == 0);
      require(operatorCount[_owner] < maxOperatorCount);

      operators[_owner][operatorCount[_owner]] = msg.sender;
      operatorTokens[_owner][operatorCount[_owner]] = _tokenId;
      operatorCount[_owner] += 1;

      Transfer(msg.sender, _owner, _tokenId);
      Approval(msg.sender, _operator, _tokenId);
   }



/* Set or reaffirm the approved address for an operator */

   function _setApprovalForAll(address _operator, bool _approved) internal {
      require(_operator != msg.sender);
      approvedForAll[msg.sender][_operator] = _approved;
      Approval(msg.sender, _operator, _approved);
   }



/* Get the approved address for an operator */

   function _getApprovedForAll(address _owner, address _operator) internal view returns(bool) {
      return approvedForAll[_owner][_operator];
   }



/* Get the token ID at a given approval slot */

   function _operatorApproval(address _owner, uint256 _index) internal view returns(uint256) {

      require(_index < maxOperatorCount);
      uint256 tokenId = operatorTokens[_owner][_index];
      require(tokenId != 0);
      return tokenId;
   }

}
