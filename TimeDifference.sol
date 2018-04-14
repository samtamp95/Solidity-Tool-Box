pragma solidity ^0.4.21;
//since at times we need to end a contract at certain Timer
//or if we want to check the price this would be the only method
//in the future time end and start will have it
contract Timer{
   uint End;
   address owner;
   
   //set the owner of the message
    function user() internal{
        owner = msg.sender;
    }
    //enable the ability to kill the contract if t
    function kill() public{
        selfdestruct(owner);
    }
    //easiest way to get number of seconds to when you want to end it
    //https://www.unixtimestamp.com/index.php
    function duration(uint timeinseconds) public {
    //set when this contract will end
        End=timeinseconds;
    }
   function getTimeDif() public constant  returns(uint difference){
       difference=End-now;
      return (difference);
   }
   function HoursLeft() public constant  returns(uint difference){
       difference=End-now;
      return (difference/3600);
   }
   //seeing the time now in seconds
   function timenow() public constant  returns(uint){
      return now;
   }
   
}