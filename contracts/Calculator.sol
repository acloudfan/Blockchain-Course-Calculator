pragma solidity ^0.4.6;

contract Calculator {

  uint result;

  function Calculator() {
    // constructor
    result=10;
  }

  // returns the result
  function getResult() constant returns (uint){
    return result;
  }

  // result = result + num
  function addToNumber(uint num) returns (uint) {
    result += num;
    return result;
  }

  // result = result - num
  function substractNumber(uint num) returns (uint) {
    result -= num;
    return result;
  }

  // result = result * num
  function multiplyWithNumber(uint num) returns (uint) {
    return result;
  }

  // result = result / num
  function divideByNumber(uint num) returns (uint) {
    return result;
  }

}
