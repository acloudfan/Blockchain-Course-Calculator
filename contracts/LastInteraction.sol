pragma solidity ^0.4.4;

/**
 * Part of a course on Blockchain
 **/
contract InteractionChannel {

  string  name;
  uint    lastUpdate;
  address lastAddress;

  event Interaction(string name, address addr, uint timeUpdated);


  function  currentName() constant  returns(string){
    return name;
  }

  function  lastUpdatedMinutes() constant  returns(uint){
    return ((now - lastUpdate)/60);
  }

  function  fromAddres() constant returns(address){
    return lastAddress;
  }

  function interact(string yourName) {
    name = yourName;
    lastAddress = msg.sender;
    lastUpdate = now;
    Interaction(name,lastAddress,lastUpdate);
  }

}
