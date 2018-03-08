pragma solidity ^0.4.0;
contract New{
string public symbol;
uint256 public totalSupply;
string public name;
uint public decimals;
address owner;
function New()public{
    symbol="NT";
    totalSupply=10000;
    name="newtoken";
    decimals=18;
     balance[msg.sender]=totalSupply;
}
mapping(address=>uint)public balance;

   
    function transfer(address to,uint amount)public{
        require(amount<=balance[msg.sender]);
        balance[to]+=amount;
        balance[msg.sender]-=amount;
        
    }
    function mint(uint amount)public{
          require(amount<=balance[msg.sender]);
         balance[msg.sender]+=amount;
         
        
        
    }
    function transfrom(address from,address to,uint amount)public{
        require(amount <= balance[from]);
         balance[from]=balance[from]-(amount);
          balance[to] =balance[to]+(amount);
    }
    
}