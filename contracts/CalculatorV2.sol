pragma solidity ^0.4.6;

contract CalculatorV2 {

  uint result;

  event NumberAdded(uint n);
  event NumberSubtracted(uint n);
  event NumberMultiplied(uint n);
  event NumberDivided(uint n);

  function CalculatorV2(uint num) {
    // constructor
    result=num;
  }

  // returns the result
  function getResult() returns (uint){
    return result;
  }

  // result = result + num
  function addToNumber(uint num) returns (uint) {
    result += num;
    NumberAdded(num);
    return result;
  }

  // result = result - num
  function substractNumber(uint num) returns (uint) {
    result -= num;
    NumberSubtracted(num);
    return result;
  }

  // result = result * num
  function multiplyWithNumber(uint num) returns (uint) {
    NumberMultiplied(num);
    return result;
  }

  // result = result / num
  function divideByNumber(uint num) returns (uint) {
    NumberDivided(num);
    return result;
  }

}
