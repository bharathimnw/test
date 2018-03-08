pragma solidity ^0.4.0;
contract New{
string public Symbol;
uint256 public totalsupply;
string public name;
uint public decimal;
address owner;
function New()public{
    Symbol="NT";
    totalsupply=10000;
    name="newtoken";
    decimal=18;
     balance[msg.sender]=totalsupply;
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
         balance[from]=balance[from]-(amount);
          balance[to] =balance[to]+(amount);
    }
    
}