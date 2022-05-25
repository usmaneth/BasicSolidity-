contract ERC20Token {

uint public totalSupply_;

mapping(address => uint) public balanceOf;
mapping(address => mapping(address => uint)) public allowance;

function totalSupply() public view returns (uint) {
  return totalSupply_;
}

function balanceOf(address who) public view returns (uint) {
  return balanceOf[who];
}

function allowance(address owner, address spender) public view returns (uint) {
  return allowance[owner][spender];
}

function transfer(address to, uint value) public returns (bool) {
  require(value <= balanceOf[msg.sender]);
  balanceOf[msg.sender] -= value;
  balanceOf[to] += value;
  emit Transfer(msg.sender,to,value); 
  return true;
}

function approve(address spender, uint value) public returns (bool) {
  allowance[msg.sender][spender] = value;
  emit Approval(msg.sender, spender, value);
  return true;
}

function transferFrom(address from, address to, uint value) public returns (bool) {
  require(value <= balanceOf[from]);
  require(value <= allowance[from][msg.sender]);
  balanceOf[from] -= value;
  balanceOf[to] += value;
  allowance[from][msg.sender] -= value;
  emit Transfer(from, to, value);
  return true;
}

event Transfer(address indexed from, address indexed to, uint value);
event Approval(address indexed owner, address indexed spender, uint value);

}
