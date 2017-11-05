pragma solidity ^0.4.4;

/**
 * Part of a course on Blockchain
 **/
contract InteractionChannel {

  bytes32 name;
  uint    lastUpdate;
  address lastAddress;

  event Interaction(bytes32 indexed name, address  indexed addr, uint indexed timeUpdated);


  function  currentName() public constant  returns(bytes32){
    return name;
  }

  function  lastUpdatedMinutes() public constant  returns(uint){
    return ((now - lastUpdate)/60);
  }

  function  fromAddres() public constant returns(address){
    return lastAddress;
  }

  function interact(bytes32 yourName) public {
    name = yourName;
    lastAddress = msg.sender;
    lastUpdate = now;
    Interaction(name,lastAddress,lastUpdate);
  }

}
