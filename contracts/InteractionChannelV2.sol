pragma solidity ^0.4.4;

/**
 * Part of a course on Blockchain
 **/
contract InteractionChannel {

  string name;
  uint    lastUpdate;
  address lastAddress;

  event Interaction(string indexed name, address  indexed addr, uint indexed timeUpdated);


  function  currentName() public constant  returns(string){
    return name;
  }

  function  lastUpdatedMinutes() public constant  returns(uint){
    return ((now - lastUpdate)/60);
  }

  function  fromAddres() public constant returns(address){
    return lastAddress;
  }

  function interact(string yourName) public {
    name = yourName;
    lastAddress = msg.sender;
    lastUpdate = now;
    emit Interaction(name,lastAddress,lastUpdate);
  }

}
